.class public Lcom/android/systemui/biometrics/AuthController;
.super Lcom/android/systemui/SystemUI;
.source "AuthController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/biometrics/AuthDialogCallback;
.implements Lcom/android/systemui/doze/DozeReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/AuthController$BiometricTaskStackListener;
    }
.end annotation


# instance fields
.field private final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

.field private final mFaceAuthSensorLocation:Landroid/graphics/PointF;

.field private final mFaceManager:Landroid/hardware/face/FaceManager;

.field private final mFaceProps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mFingerprintAuthenticatorsRegisteredCallback:Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFpProps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field mTaskStackListener:Landroid/app/TaskStackListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

.field private final mUdfpsControllerFactory:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/biometrics/UdfpsController;",
            ">;"
        }
    .end annotation
.end field

.field private mUdfpsProps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/app/ActivityTaskManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Landroid/app/ActivityTaskManager;",
            "Landroid/hardware/fingerprint/FingerprintManager;",
            "Landroid/hardware/face/FaceManager;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/biometrics/UdfpsController;",
            ">;)V"
        }
    .end annotation

    .line 368
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Lcom/android/systemui/biometrics/AuthController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/AuthController$1;-><init>(Lcom/android/systemui/biometrics/AuthController;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mFingerprintAuthenticatorsRegisteredCallback:Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;

    .line 135
    new-instance v0, Lcom/android/systemui/biometrics/AuthController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/AuthController$2;-><init>(Lcom/android/systemui/biometrics/AuthController;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 369
    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 370
    iput-object p3, p0, Lcom/android/systemui/biometrics/AuthController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 371
    iput-object p4, p0, Lcom/android/systemui/biometrics/AuthController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 372
    iput-object p5, p0, Lcom/android/systemui/biometrics/AuthController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 373
    iput-object p6, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 374
    iput-object p7, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsControllerFactory:Ljavax/inject/Provider;

    const/4 p2, 0x0

    if-eqz p6, :cond_0

    .line 376
    invoke-virtual {p6}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    iput-object p3, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceProps:Ljava/util/List;

    .line 378
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/systemui/R$array;->config_face_auth_props:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p3

    if-eqz p3, :cond_2

    .line 380
    array-length p4, p3

    const/4 p5, 0x2

    if-ge p4, p5, :cond_1

    goto :goto_1

    .line 383
    :cond_1
    new-instance p2, Landroid/graphics/PointF;

    const/4 p4, 0x0

    aget p4, p3, p4

    int-to-float p4, p4

    const/4 p5, 0x1

    aget p3, p3, p5

    int-to-float p3, p3

    invoke-direct {p2, p4, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceAuthSensorLocation:Landroid/graphics/PointF;

    goto :goto_2

    .line 381
    :cond_2
    :goto_1
    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceAuthSensorLocation:Landroid/graphics/PointF;

    .line 388
    :goto_2
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 389
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/AuthController;)Landroid/os/Handler;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/AuthController;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthController;->handleTaskStackChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/AuthController;)Ljava/util/List;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mFpProps:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/biometrics/AuthController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mFpProps:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/AuthController;)Ljava/util/List;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsProps:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/biometrics/AuthController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsProps:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/biometrics/UdfpsController;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/biometrics/AuthController;)Ljavax/inject/Provider;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsControllerFactory:Ljavax/inject/Provider;

    return-object p0
.end method

.method private getErrorString(III)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 470
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p3}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 473
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleTaskStackChanged()V
    .locals 5

    const-string v0, "AuthController"

    .line 158
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-eqz v1, :cond_0

    .line 160
    :try_start_0
    invoke-interface {v1}, Lcom/android/systemui/biometrics/AuthDialog;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task stack changed, current client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    const/4 v3, 0x1

    .line 163
    invoke-virtual {v2, v3}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v2

    .line 164
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 165
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 167
    invoke-static {v4, v1}, Lcom/android/systemui/biometrics/Utils;->isSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Evicting client due to: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {v1, v3}, Lcom/android/systemui/biometrics/AuthDialog;->dismissWithoutCallback(Z)V

    const/4 v1, 0x0

    .line 170
    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 171
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    .line 172
    invoke-interface {v2, v3, v1}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onDialogDismissed(I[B)V

    .line 175
    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Remote exception"

    .line 180
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private onDialogDismissed(I)V
    .locals 2

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialogDismissed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AuthController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-nez p1, :cond_0

    const-string p1, "Dialog already dismissed"

    .line 605
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 607
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 608
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    return-void
.end method

.method private sendResultAndCleanUp(I[B)V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    const-string v1, "AuthController"

    if-nez v0, :cond_0

    const-string p0, "sendResultAndCleanUp: Receiver is null"

    .line 350
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 354
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onDialogDismissed(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "Remote exception"

    .line 356
    invoke-static {v1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthController;->onDialogDismissed(I)V

    return-void
.end method

.method private showDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V
    .locals 11

    .line 556
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    .line 558
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/hardware/biometrics/PromptInfo;

    .line 559
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [I

    .line 560
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 561
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 562
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 563
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 564
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object v1, p0

    move v4, v0

    move v8, p2

    .line 567
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/biometrics/AuthController;->buildDialog(Landroid/hardware/biometrics/PromptInfo;ZI[IZLjava/lang/String;ZJ)Lcom/android/systemui/biometrics/AuthDialog;

    move-result-object p2

    const-string v1, "AuthController"

    if-nez p2, :cond_0

    const-string p0, "Unsupported type configuration"

    .line 578
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 583
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " savedState: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mCurrentDialog: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " newDialog: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 594
    invoke-interface {v0, v1}, Lcom/android/systemui/biometrics/AuthDialog;->dismissWithoutCallback(Z)V

    .line 597
    :cond_1
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 598
    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 599
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p2, p0, p3}, Lcom/android/systemui/biometrics/AuthDialog;->show(Landroid/view/WindowManager;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected buildDialog(Landroid/hardware/biometrics/PromptInfo;ZI[IZLjava/lang/String;ZJ)Lcom/android/systemui/biometrics/AuthDialog;
    .locals 2

    .line 650
    new-instance v0, Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;-><init>(Landroid/content/Context;)V

    .line 651
    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->setCallback(Lcom/android/systemui/biometrics/AuthDialogCallback;)Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    move-result-object v0

    .line 652
    invoke-virtual {v0, p1}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->setPromptInfo(Landroid/hardware/biometrics/PromptInfo;)Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    move-result-object p1

    .line 653
    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->setRequireConfirmation(Z)Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    move-result-object p1

    .line 654
    invoke-virtual {p1, p3}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->setUserId(I)Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    move-result-object p1

    .line 655
    invoke-virtual {p1, p6}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->setOpPackageName(Ljava/lang/String;)Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    move-result-object p1

    .line 656
    invoke-virtual {p1, p7}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->setSkipIntro(Z)Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    move-result-object p1

    .line 657
    invoke-virtual {p1, p8, p9}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->setOperationId(J)Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthController;->mFpProps:Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceProps:Ljava/util/List;

    .line 658
    invoke-virtual {p1, p4, p5, p2, p0}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->build([IZLjava/util/List;Ljava/util/List;)Lcom/android/systemui/biometrics/AuthContainerView;

    move-result-object p0

    return-object p0
.end method

.method public dozeTimeTick()V
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-eqz p0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->dozeTimeTick()V

    :cond_0
    return-void
.end method

.method public getFaceAuthSensorLocation()Landroid/graphics/PointF;
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceProps:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceAuthSensorLocation:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceAuthSensorLocation:Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUdfpsProps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 464
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsProps:Ljava/util/List;

    return-object p0
.end method

.method public getUdfpsSensorLocation()Landroid/graphics/PointF;
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 306
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-virtual {v1}, Lcom/android/systemui/biometrics/UdfpsController;->getSensorLocation()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    .line 307
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->getSensorLocation()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public hideAuthenticationDialog()V
    .locals 2

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideAuthenticationDialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-nez v0, :cond_0

    return-void

    .line 526
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/biometrics/AuthDialog;->dismissFromSystemServer()V

    const/4 v0, 0x0

    .line 530
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    return-void
.end method

.method public isUdfpsEnrolled(I)Z
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsProps:Ljava/util/List;

    invoke-virtual {v0, p1, p0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledTemplatesForAnySensor(ILjava/util/List;)Z

    move-result p0

    return p0
.end method

.method public onAodInterrupt(IIFF)V
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-nez p0, :cond_0

    return-void

    .line 333
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/biometrics/UdfpsController;->onAodInterrupt(IIFF)V

    return-void
.end method

.method public onBiometricAuthenticated()V
    .locals 0

    .line 452
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/AuthDialog;->onAuthenticationSucceeded()V

    return-void
.end method

.method public onBiometricError(III)V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    .line 488
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "onBiometricError(%d, %d, %d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AuthController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x7

    if-eq p2, v1, :cond_1

    const/16 v1, 0x9

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    const/16 v5, 0x64

    if-eq p2, v5, :cond_2

    if-ne p2, v0, :cond_3

    :cond_2
    move v3, v4

    .line 498
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {v0}, Lcom/android/systemui/biometrics/AuthDialog;->isAllowDeviceCredentials()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    const-string p1, "onBiometricError, lockout"

    .line 499
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {p1}, Lcom/android/systemui/biometrics/AuthDialog;->animateToCredentialUI()V

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_6

    if-ne p2, v5, :cond_5

    .line 503
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const p2, 0x10401aa

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 504
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/AuthController;->getErrorString(III)Ljava/lang/String;

    move-result-object p1

    .line 505
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onBiometricError, soft error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {p2, p1}, Lcom/android/systemui/biometrics/AuthDialog;->onAuthenticationFailed(Ljava/lang/String;)V

    goto :goto_3

    .line 508
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/AuthController;->getErrorString(III)Ljava/lang/String;

    move-result-object p1

    .line 509
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onBiometricError, hard error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {p2, p1}, Lcom/android/systemui/biometrics/AuthDialog;->onError(Ljava/lang/String;)V

    .line 513
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->onCancelUdfps()V

    return-void
.end method

.method public onBiometricHelp(Ljava/lang/String;)V
    .locals 2

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricHelp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {p0, p1}, Lcom/android/systemui/biometrics/AuthDialog;->onHelp(Ljava/lang/String;)V

    return-void
.end method

.method public onCancelUdfps()V
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-nez p0, :cond_0

    return-void

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->onCancelUdfps()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 613
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 617
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-eqz p1, :cond_0

    .line 618
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsController;->onConfigurationChanged()V

    .line 622
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-eqz p1, :cond_2

    .line 623
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 624
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {v0, p1}, Lcom/android/systemui/biometrics/AuthDialog;->onSaveState(Landroid/os/Bundle;)V

    .line 625
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/biometrics/AuthDialog;->dismissWithoutCallback(Z)V

    const/4 v0, 0x0

    .line 626
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    const-string v0, "container_state"

    .line 630
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const-string v0, "credential_showing"

    .line 633
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/biometrics/PromptInfo;

    const v1, 0x8000

    .line 639
    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/biometrics/AuthController;->showDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public onDeviceCredentialPressed()V
    .locals 2

    .line 207
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    const-string v0, "AuthController"

    if-nez p0, :cond_0

    const-string p0, "onDeviceCredentialPressed: Receiver is null"

    .line 208
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 212
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onDeviceCredentialPressed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "RemoteException when handling credential button"

    .line 214
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onDialogAnimatedIn()V
    .locals 2

    .line 233
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    const-string v0, "AuthController"

    if-nez p0, :cond_0

    const-string p0, "onDialogAnimatedIn: Receiver is null"

    .line 234
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 239
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onDialogAnimatedIn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "RemoteException when sending onDialogAnimatedIn"

    .line 241
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onDismissed(I[B)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 285
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unhandled reason: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AuthController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x7

    .line 280
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x6

    .line 275
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x5

    .line 270
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x4

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x1

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x2

    .line 254
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x3

    .line 249
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSystemEvent(I)V
    .locals 2

    .line 220
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    const-string v0, "AuthController"

    if-nez p0, :cond_0

    .line 221
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSystemEvent("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): Receiver is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 225
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onSystemEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RemoteException when sending system event"

    .line 227
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onTryAgainPressed()V
    .locals 2

    .line 194
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    const-string v0, "AuthController"

    if-nez p0, :cond_0

    const-string p0, "onTryAgainPressed: Receiver is null"

    .line 195
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 199
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onTryAgainPressed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "RemoteException when handling try again"

    .line 201
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZILjava/lang/String;J)V
    .locals 6

    .line 413
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, p3, v4

    .line 418
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 420
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showAuthenticationDialog, authenticators: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sensorIds: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", credentialAllowed: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", requireConfirmation: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", operationId: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p8, p9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthController"

    .line 420
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 427
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 428
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 429
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 430
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 431
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 432
    iput p6, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 433
    iput-object p7, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 434
    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 437
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-eqz p1, :cond_1

    .line 438
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCurrentDialog: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_1
    const/4 p1, 0x0

    .line 442
    invoke-direct {p0, v0, v3, p1}, Lcom/android/systemui/biometrics/AuthController;->showDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 398
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mWindowManager:Landroid/view/WindowManager;

    .line 400
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    .line 401
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mFingerprintAuthenticatorsRegisteredCallback:Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    .line 405
    :cond_0
    new-instance v0, Lcom/android/systemui/biometrics/AuthController$BiometricTaskStackListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/biometrics/AuthController$BiometricTaskStackListener;-><init>(Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/biometrics/AuthController$1;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 406
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {p0, v0}, Landroid/app/ActivityTaskManager;->registerTaskStackListener(Landroid/app/TaskStackListener;)V

    return-void
.end method
