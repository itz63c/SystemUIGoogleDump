.class public Lcom/google/android/systemui/coversheet/CoversheetService;
.super Ljava/lang/Object;
.source "CoversheetService.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mBuildId:Ljava/lang/String;

.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mContext:Landroid/content/Context;

.field private mKeyguardShowing:Z

.field private mUserUnlocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Coversheet"

    const/4 v1, 0x3

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/coversheet/CoversheetService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/google/android/systemui/coversheet/CoversheetService$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/coversheet/CoversheetService$1;-><init>(Lcom/google/android/systemui/coversheet/CoversheetService;)V

    iput-object v0, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 57
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mBuildId:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mContext:Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Lcom/google/android/systemui/coversheet/CoversheetService;->start()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 21
    sget-boolean v0, Lcom/google/android/systemui/coversheet/CoversheetService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/systemui/coversheet/CoversheetService;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/systemui/coversheet/CoversheetService;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/google/android/systemui/coversheet/CoversheetService;->startCoversheetIfNeeded()V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/systemui/coversheet/CoversheetService;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mUserUnlocked:Z

    return p1
.end method

.method private start()V
    .locals 4

    .line 100
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    const-string v1, "Coversheet"

    const-string v2, "coversheet_id"

    if-nez v0, :cond_1

    .line 101
    sget-boolean v0, Lcom/google/android/systemui/coversheet/CoversheetService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Store initial ID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mBuildId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mBuildId:Ljava/lang/String;

    invoke-static {v0, v2, p0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v2, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mBuildId:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 110
    sget-boolean v0, Lcom/google/android/systemui/coversheet/CoversheetService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "Register callback."

    .line 111
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_2
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_3
    return-void
.end method

.method private startCoversheetIfNeeded()V
    .locals 4

    .line 63
    sget-boolean v0, Lcom/google/android/systemui/coversheet/CoversheetService;->DEBUG:Z

    const-string v1, "Coversheet"

    if-eqz v0, :cond_0

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mKeyguardShowing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mKeyguardShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mUserUnlocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mUserUnlocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mKeyguardShowing:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mUserUnlocked:Z

    if-eqz v2, :cond_3

    .line 69
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "Not able to get any running task"

    .line 71
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 74
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-static {v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isHomeTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v2

    if-eqz v0, :cond_2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to home now? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v2, :cond_3

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.tips.action.COVERSHEET"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.apps.tips"

    .line 82
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x14000000

    .line 83
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    :try_start_0
    iget-object v2, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Coversheet was not found"

    .line 87
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mBuildId:Ljava/lang/String;

    const-string v2, "coversheet_id"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_3
    return-void
.end method
