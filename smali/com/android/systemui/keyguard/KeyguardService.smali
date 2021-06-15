.class public Lcom/android/systemui/keyguard/KeyguardService;
.super Landroid/app/Service;
.source "KeyguardService.java"


# static fields
.field static sEnableRemoteKeyguardAnimation:Z


# instance fields
.field private final mBinder:Lcom/android/internal/policy/IKeyguardService$Stub;

.field private final mExitAnimationRunner:Landroid/view/IRemoteAnimationRunner$Stub;

.field private final mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

.field private final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private final mOccludeAnimationRunner:Landroid/view/IRemoteAnimationRunner$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.wm.enable_remote_keyguard_animation"

    const/4 v1, 0x0

    .line 74
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/keyguard/KeyguardService;->sEnableRemoteKeyguardAnimation:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)V
    .locals 8

    .line 82
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 124
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardService$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardService$1;-><init>(Lcom/android/systemui/keyguard/KeyguardService;)V

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardService;->mExitAnimationRunner:Landroid/view/IRemoteAnimationRunner$Stub;

    .line 145
    new-instance v6, Lcom/android/systemui/keyguard/KeyguardService$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/keyguard/KeyguardService$2;-><init>(Lcom/android/systemui/keyguard/KeyguardService;)V

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardService;->mOccludeAnimationRunner:Landroid/view/IRemoteAnimationRunner$Stub;

    .line 172
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardService$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardService$3;-><init>(Lcom/android/systemui/keyguard/KeyguardService;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mBinder:Lcom/android/internal/policy/IKeyguardService$Stub;

    .line 83
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 84
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 86
    sget-boolean p0, Lcom/android/systemui/keyguard/KeyguardService;->sEnableRemoteKeyguardAnimation:Z

    if-eqz p0, :cond_0

    .line 87
    new-instance p0, Landroid/view/RemoteAnimationDefinition;

    invoke-direct {p0}, Landroid/view/RemoteAnimationDefinition;-><init>()V

    .line 88
    new-instance p1, Landroid/view/RemoteAnimationAdapter;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    const/16 p2, 0x14

    .line 90
    invoke-virtual {p0, p2, p1}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    const/16 p2, 0x15

    .line 91
    invoke-virtual {p0, p2, p1}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    .line 93
    new-instance p1, Landroid/view/RemoteAnimationAdapter;

    const-wide/16 v0, 0x0

    move-object v2, p1

    move-object v3, v6

    move-wide v6, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    const/16 p2, 0x16

    .line 95
    invoke-virtual {p0, p2, p1}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    const/16 p2, 0x17

    .line 96
    invoke-virtual {p0, p2, p1}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    .line 97
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/app/ActivityTaskManager;->registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/internal/policy/IKeyguardService$Stub;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mBinder:Lcom/android/internal/policy/IKeyguardService$Stub;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    return-object p0
.end method


# virtual methods
.method checkPermission()V
    .locals 3

    .line 114
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.CONTROL_KEYGUARD"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 118
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller needs permission \'android.permission.CONTROL_KEYGUARD\' to call "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "KeyguardService"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mBinder:Lcom/android/internal/policy/IKeyguardService$Stub;

    return-object p0
.end method

.method public onCreate()V
    .locals 0

    .line 104
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded()V

    return-void
.end method
