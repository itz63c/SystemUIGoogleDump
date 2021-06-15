.class public Lcom/google/android/systemui/fingerprint/UdfpsHbmController;
.super Ljava/lang/Object;
.source "UdfpsHbmController.java"

# interfaces
.implements Lcom/android/systemui/biometrics/UdfpsHbmCallback;


# static fields
.field private static final DEFAULT_GHBM_FLAG:Z = false

.field private static final LHBM_FILE_PATH:Ljava/lang/String; = "/sys/devices/platform/1c2c0000.drmdsim/1c2c0000.drmdsim.0/backlight/panel0-backlight/local_hbm_mode"

.field private static final LHBM_OFF:[B

.field private static final LHBM_ON:[B

.field private static final SETTING_HBM_TYPE:Ljava/lang/String; = "com.android.systemui.biometrics.UdfpsSurfaceView.hbmType"

.field private static final SYSPROP_GHBM_FLAG:Ljava/lang/String; = "persist.fingerprint.ghbm"

.field private static final TAG:Ljava/lang/String; = "UdfpsHbmController"


# instance fields
.field private final mCommandQueueCallback:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private final mLhbmFile:Ljava/io/File;

.field private mUdfpsHbmListener:Landroid/hardware/fingerprint/IUdfpsHbmListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->LHBM_ON:[B

    .line 41
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->LHBM_OFF:[B

    const-string v0, "udfps_jni"

    .line 152
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$1;-><init>(Lcom/google/android/systemui/fingerprint/UdfpsHbmController;)V

    iput-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mCommandQueueCallback:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 61
    iput-object p1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mContext:Landroid/content/Context;

    .line 62
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/platform/1c2c0000.drmdsim/1c2c0000.drmdsim.0/backlight/panel0-backlight/local_hbm_mode"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mLhbmFile:Ljava/io/File;

    .line 64
    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    const-string p0, "persist.fingerprint.ghbm"

    const/4 p2, 0x0

    .line 68
    invoke-static {p0, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    xor-int/lit8 p0, p0, 0x1

    const/4 p2, -0x2

    const-string v0, "com.android.systemui.biometrics.UdfpsSurfaceView.hbmType"

    invoke-static {p1, v0, p0, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/systemui/fingerprint/UdfpsHbmController;Landroid/hardware/fingerprint/IUdfpsHbmListener;)Landroid/hardware/fingerprint/IUdfpsHbmListener;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mUdfpsHbmListener:Landroid/hardware/fingerprint/IUdfpsHbmListener;

    return-object p1
.end method

.method private native setGhbmNative(Landroid/view/Surface;Z)V
.end method

.method private static writeToFile(Ljava/io/File;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 76
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 77
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method


# virtual methods
.method public disableHbm(ILandroid/view/Surface;)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mUdfpsHbmListener:Landroid/hardware/fingerprint/IUdfpsHbmListener;

    const-string v1, "UdfpsHbmController"

    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-interface {v0, p1, v2}, Landroid/hardware/fingerprint/IUdfpsHbmListener;->onHbmDisabled(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "disableHbm | RemoteException when calling mUdfpsHbmListener"

    .line 123
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    .line 145
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "disableHbm | unsupported HBM type: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 138
    :cond_1
    :try_start_1
    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mLhbmFile:Ljava/io/File;

    sget-object p1, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->LHBM_OFF:[B

    invoke-static {p0, p1}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->writeToFile(Ljava/io/File;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "disableHbm | failed to disable LHBM: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    const/4 p1, 0x0

    .line 129
    invoke-direct {p0, p2, p1}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->setGhbmNative(Landroid/view/Surface;Z)V

    :goto_1
    return-void

    :cond_3
    const-string p0, "disableHbm | GHBM is requested, but surface is null"

    .line 131
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableHbm(ILandroid/view/Surface;)V
    .locals 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableHbm surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hbmType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UdfpsHbmController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mUdfpsHbmListener:Landroid/hardware/fingerprint/IUdfpsHbmListener;

    if-eqz v0, :cond_0

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-interface {v0, p1, v2}, Landroid/hardware/fingerprint/IUdfpsHbmListener;->onHbmEnabled(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "enableHbm | RemoteException when calling mUdfpsHbmListener"

    .line 91
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    .line 112
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enableHbm | unsupported HBM type: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 105
    :cond_1
    :try_start_1
    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mLhbmFile:Ljava/io/File;

    sget-object p1, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->LHBM_ON:[B

    invoke-static {p0, p1}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->writeToFile(Ljava/io/File;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enableHbm | failed to enable LHBM: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 97
    invoke-direct {p0, p2, v0}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->setGhbmNative(Landroid/view/Surface;Z)V

    goto :goto_1

    :cond_3
    const-string p0, "enableHbm | GHBM is requested, but surface is null"

    .line 99
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
