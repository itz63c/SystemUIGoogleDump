.class public Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "LockscreenWallpaper.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;,
        Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;
    }
.end annotation


# instance fields
.field private mCache:Landroid/graphics/Bitmap;

.field private mCached:Z

.field private mCurrentUserId:I

.field private final mFaceAuthScreenBrightnessController:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;",
            ">;"
        }
    .end annotation
.end field

.field private final mH:Landroid/os/Handler;

.field private mLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private mSelectedUser:Landroid/os/UserHandle;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/app/WallpaperManager;Landroid/app/IWallpaperManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/NotificationMediaManager;Ljava/util/Optional;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/WallpaperManager;",
            "Landroid/app/IWallpaperManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 91
    const-class v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 92
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 93
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCurrentUserId:I

    .line 94
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 95
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 96
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mFaceAuthScreenBrightnessController:Ljava/util/Optional;

    .line 97
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mH:Landroid/os/Handler;

    if-eqz p2, :cond_0

    .line 102
    :try_start_0
    invoke-interface {p2, p0}, Landroid/app/IWallpaperManager;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "System dead?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockscreenWallpaper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCached:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCache:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)Lcom/android/systemui/statusbar/NotificationMediaManager;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mLoader:Landroid/os/AsyncTask;

    return-object p1
.end method

.method private postUpdateWallpaper()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mH:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string p0, "LockscreenWallpaper"

    const-string v0, "Trying to use LockscreenWallpaper before initialization."

    .line 206
    invoke-static {p0, v0}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 209
    :cond_0
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p3, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object p1

    .line 251
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mCached="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCached:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 252
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mCache="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 253
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mCurrentUserId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCurrentUserId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 254
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mSelectedUser="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mSelectedUser:Landroid/os/UserHandle;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 110
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCached:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCache:Landroid/graphics/Bitmap;

    return-object p0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 114
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCached:Z

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCache:Landroid/graphics/Bitmap;

    return-object v0

    .line 119
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCurrentUserId:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mSelectedUser:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->loadBitmap(ILandroid/os/UserHandle;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    move-result-object v0

    .line 120
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->success:Z

    if-eqz v2, :cond_3

    .line 121
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCached:Z

    .line 122
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setHasLockscreenWallpaper(Z)V

    .line 123
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCache:Landroid/graphics/Bitmap;

    .line 125
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCache:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public loadBitmap(ILandroid/os/UserHandle;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 133
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    move-result-object p0

    return-object p0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mFaceAuthScreenBrightnessController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mFaceAuthScreenBrightnessController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->getFaceAuthWallpaper()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    .line 147
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 153
    :try_start_0
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 154
    sget-object p2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object p2, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 156
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    .line 155
    invoke-static {p2, v1, p0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p2, "LockscreenWallpaper"

    const-string v0, "Can\'t decode file"

    .line 158
    invoke-static {p2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    invoke-static {}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->fail()Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 162
    throw p0

    :cond_3
    if-eqz p2, :cond_4

    .line 166
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 167
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const/4 p2, 0x1

    .line 166
    invoke-virtual {p0, p1, p2}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    move-result-object p0

    return-object p0

    .line 171
    :cond_4
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    move-result-object p0

    return-object p0
.end method

.method public onWallpaperChanged()V
    .locals 0

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->postUpdateWallpaper()V

    return-void
.end method

.method public onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 221
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCurrentUserId:I

    .line 222
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mSelectedUser:Landroid/os/UserHandle;

    .line 223
    new-instance v3, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;ILandroid/os/UserHandle;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    .line 244
    invoke-virtual {v3, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mLoader:Landroid/os/AsyncTask;

    return-void
.end method

.method public setCurrentUser(I)V
    .locals 1

    .line 177
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCurrentUserId:I

    if-eq p1, v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mSelectedUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eq p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCached:Z

    .line 181
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCurrentUserId:I

    :cond_2
    return-void
.end method
