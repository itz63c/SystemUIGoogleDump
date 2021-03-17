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

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mFpProps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

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

.field private final mUdfpsProps:Ljava/util/List;
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

    .line 321
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Lcom/android/systemui/biometrics/AuthController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/AuthController$1;-><init>(Lcom/android/systemui/biometrics/AuthController;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 322
    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 323
    iput-object p3, p0, Lcom/android/systemui/biometrics/AuthController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 324
    iput-object p4, p0, Lcom/android/systemui/biometrics/AuthController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 325
    iput-object p5, p0, Lcom/android/systemui/biometrics/AuthController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 326
    iput-object p6, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 327
    iput-object p7, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsControllerFactory:Ljavax/inject/Provider;

    const/4 p2, 0x0

    if-eqz p5, :cond_0

    .line 329
    invoke-virtual {p5}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    .line 330
    :goto_0
    iput-object p3, p0, Lcom/android/systemui/biometrics/AuthController;->mFpProps:Ljava/util/List;

    if-eqz p6, :cond_1

    .line 331
    invoke-virtual {p6}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object p4

    goto :goto_1

    :cond_1
    move-object p4, p2

    :goto_1
    iput-object p4, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceProps:Ljava/util/List;

    .line 333
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_3

    .line 335
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 336
    invoke-virtual {p5}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result p6

    if-eqz p6, :cond_2

    .line 337
    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 341
    :cond_3
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    move-object p2, p4

    :cond_4
    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsProps:Ljava/util/List;

    .line 343
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 344
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/AuthController;)Landroid/os/Handler;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/AuthController;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthController;->handleTaskStackChanged()V

    return-void
.end method

.method private getErrorString(III)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 421
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p3}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 424
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleTaskStackChanged()V
    .locals 5

    const-string v0, "AuthController"

    .line 131
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-eqz v1, :cond_0

    .line 133
    :try_start_0
    invoke-interface {v1}, Lcom/android/systemui/biometrics/AuthDialog;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task stack changed, current client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    const/4 v3, 0x1

    .line 136
    invoke-virtual {v2, v3}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v2

    .line 137
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 138
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 140
    invoke-static {v4, v1}, Lcom/android/systemui/biometrics/Utils;->isSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Evicting client due to: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {v1, v3}, Lcom/android/systemui/biometrics/AuthDialog;->dismissWithoutCallback(Z)V

    const/4 v1, 0x0

    .line 143
    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 144
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    .line 145
    invoke-interface {v2, v3, v1}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onDialogDismissed(I[B)V

    .line 148
    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Remote exception"

    .line 153
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private onCancelAodInterrupt()V
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-nez p0, :cond_0

    return-void

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->onCancelAodInterrupt()V

    return-void
.end method

.method private onDialogDismissed(I)V
    .locals 2

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialogDismissed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AuthController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-nez p1, :cond_0

    const-string p1, "Dialog already dismissed"

    .line 539
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 541
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 542
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    return-void
.end method

.method private sendResultAndCleanUp(I[B)V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    const-string v1, "AuthController"

    if-nez v0, :cond_0

    const-string p0, "sendResultAndCleanUp: Receiver is null"

    .line 303
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 307
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onDialogDismissed(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "Remote exception"

    .line 309
    invoke-static {v1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthController;->onDialogDismissed(I)V

    return-void
.end method

.method private showDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V
    .locals 11

    .line 490
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    .line 492
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/hardware/biometrics/PromptInfo;

    .line 493
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [I

    .line 494
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 495
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 496
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 497
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 498
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object v1, p0

    move v4, v0

    move v8, p2

    .line 501
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/biometrics/AuthController;->buildDialog(Landroid/hardware/biometrics/PromptInfo;ZI[IZLjava/lang/String;ZJ)Lcom/android/systemui/biometrics/AuthDialog;

    move-result-object p2

    const-string v1, "AuthController"

    if-nez p2, :cond_0

    const-string p0, "Unsupported type configuration"

    .line 512
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 517
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

    .line 523
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 528
    invoke-interface {v0, v1}, Lcom/android/systemui/biometrics/AuthDialog;->dismissWithoutCallback(Z)V

    .line 531
    :cond_1
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 532
    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 533
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p2, p0, p3}, Lcom/android/systemui/biometrics/AuthDialog;->show(Landroid/view/WindowManager;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected buildDialog(Landroid/hardware/biometrics/PromptInfo;ZI[IZLjava/lang/String;ZJ)Lcom/android/systemui/biometrics/AuthDialog;
    .locals 2

    .line 584
    new-instance v0, Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;-><init>(Landroid/content/Context;)V

    .line 585
    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->setCallback(Lcom/android/systemui/biometrics/AuthDialogCallback;)Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    move-result-object v0

    .line 586
    invoke-virtual {v0, p1}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->setPromptInfo(Landroid/hardware/biometrics/PromptInfo;)Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    move-result-object p1

    .line 587
    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->setRequireConfirmation(Z)Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    move-result-object p1

    .line 588
    invoke-virtual {p1, p3}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->setUserId(I)Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    move-result-object p1

    .line 589
    invoke-virtual {p1, p6}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->setOpPackageName(Ljava/lang/String;)Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    move-result-object p1

    .line 590
    invoke-virtual {p1, p7}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->setSkipIntro(Z)Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    move-result-object p1

    .line 591
    invoke-virtual {p1, p8, p9}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->setOperationId(J)Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthController;->mFpProps:Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceProps:Ljava/util/List;

    .line 592
    invoke-virtual {p1, p4, p5, p2, p0}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->build([IZLjava/util/List;Ljava/util/List;)Lcom/android/systemui/biometrics/AuthContainerView;

    move-result-object p0

    return-object p0
.end method

.method public dozeTimeTick()V
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-eqz p0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->dozeTimeTick()V

    :cond_0
    return-void
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

    .line 415
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsProps:Ljava/util/List;

    return-object p0
.end method

.method public getUdfpsRegion()Landroid/graphics/RectF;
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->getSensorLocation()Landroid/graphics/RectF;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public hideAuthenticationDialog()V
    .locals 2

    .line 463
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

    .line 465
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-nez v0, :cond_0

    return-void

    .line 471
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/biometrics/AuthDialog;->dismissFromSystemServer()V

    const/4 v0, 0x0

    .line 475
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    return-void
.end method

.method public isUdfpsEnrolled(I)Z
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsProps:Ljava/util/List;

    invoke-virtual {v0, p1, p0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledTemplatesForAnySensor(ILjava/util/List;)Z

    move-result p0

    return p0
.end method

.method public onAodInterrupt(IIFF)V
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-nez p0, :cond_0

    return-void

    .line 282
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/biometrics/UdfpsController;->onAodInterrupt(IIFF)V

    return-void
.end method

.method public onBiometricAuthenticated()V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {v0}, Lcom/android/systemui/biometrics/AuthDialog;->onAuthenticationSucceeded()V

    .line 403
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthController;->onCancelAodInterrupt()V

    return-void
.end method

.method public onBiometricError(III)V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    .line 434
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

    .line 444
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {v0}, Lcom/android/systemui/biometrics/AuthDialog;->isAllowDeviceCredentials()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    const-string p1, "onBiometricError, lockout"

    .line 445
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {p1}, Lcom/android/systemui/biometrics/AuthDialog;->animateToCredentialUI()V

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_6

    if-ne p2, v5, :cond_5

    .line 449
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const p2, 0x1040197

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 450
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/AuthController;->getErrorString(III)Ljava/lang/String;

    move-result-object p1

    .line 451
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onBiometricError, soft error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {p2, p1}, Lcom/android/systemui/biometrics/AuthDialog;->onAuthenticationFailed(Ljava/lang/String;)V

    goto :goto_3

    .line 454
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/AuthController;->getErrorString(III)Ljava/lang/String;

    move-result-object p1

    .line 455
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onBiometricError, hard error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {p2, p1}, Lcom/android/systemui/biometrics/AuthDialog;->onError(Ljava/lang/String;)V

    .line 458
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthController;->onCancelAodInterrupt()V

    return-void
.end method

.method public onBiometricHelp(Ljava/lang/String;)V
    .locals 2

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricHelp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {p0, p1}, Lcom/android/systemui/biometrics/AuthDialog;->onHelp(Ljava/lang/String;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 547
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 551
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-eqz p1, :cond_0

    .line 552
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsController;->onConfigurationChanged()V

    .line 556
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-eqz p1, :cond_2

    .line 557
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 558
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {v0, p1}, Lcom/android/systemui/biometrics/AuthDialog;->onSaveState(Landroid/os/Bundle;)V

    .line 559
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/biometrics/AuthDialog;->dismissWithoutCallback(Z)V

    const/4 v0, 0x0

    .line 560
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    const-string v0, "container_state"

    .line 564
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const-string v0, "credential_showing"

    .line 567
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/biometrics/PromptInfo;

    const v1, 0x8000

    .line 573
    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/biometrics/AuthController;->showDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public onDeviceCredentialPressed()V
    .locals 2

    .line 180
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    const-string v0, "AuthController"

    if-nez p0, :cond_0

    const-string p0, "onDeviceCredentialPressed: Receiver is null"

    .line 181
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 185
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onDeviceCredentialPressed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "RemoteException when handling credential button"

    .line 187
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onDialogAnimatedIn()V
    .locals 2

    .line 206
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    const-string v0, "AuthController"

    if-nez p0, :cond_0

    const-string p0, "onDialogAnimatedIn: Receiver is null"

    .line 207
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 212
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onDialogAnimatedIn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "RemoteException when sending onDialogAnimatedIn"

    .line 214
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onDismissed(I[B)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 258
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

    .line 253
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x6

    .line 248
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x5

    .line 243
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x4

    .line 237
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x1

    .line 232
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x2

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x3

    .line 222
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

    .line 193
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    const-string v0, "AuthController"

    if-nez p0, :cond_0

    .line 194
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

    .line 198
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onSystemEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RemoteException when sending system event"

    .line 200
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onTryAgainPressed()V
    .locals 2

    .line 167
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    const-string v0, "AuthController"

    if-nez p0, :cond_0

    const-string p0, "onTryAgainPressed: Receiver is null"

    .line 168
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 172
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onTryAgainPressed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "RemoteException when handling try again"

    .line 174
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZILjava/lang/String;J)V
    .locals 6

    .line 368
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, p3, v4

    .line 373
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 375
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showAuthenticationDialog, authenticators: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sensorIds: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
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

    .line 375
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 382
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 383
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 384
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 385
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 386
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 387
    iput p6, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 388
    iput-object p7, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 389
    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 392
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-eqz p1, :cond_1

    .line 393
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

    .line 397
    invoke-direct {p0, v0, v3, p1}, Lcom/android/systemui/biometrics/AuthController;->showDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 353
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mWindowManager:Landroid/view/WindowManager;

    .line 355
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsProps:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsControllerFactory:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsController;

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    .line 360
    :cond_0
    new-instance v0, Lcom/android/systemui/biometrics/AuthController$BiometricTaskStackListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/biometrics/AuthController$BiometricTaskStackListener;-><init>(Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/biometrics/AuthController$1;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 361
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {p0, v0}, Landroid/app/ActivityTaskManager;->registerTaskStackListener(Landroid/app/TaskStackListener;)V

    return-void
.end method
