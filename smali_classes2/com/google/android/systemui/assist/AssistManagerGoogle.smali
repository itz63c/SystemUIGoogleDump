.class public Lcom/google/android/systemui/assist/AssistManagerGoogle;
.super Lcom/android/systemui/assist/AssistManager;
.source "AssistManagerGoogle.java"


# instance fields
.field private final mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

.field private mCheckAssistantStatus:Z

.field private final mDefaultUiController:Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;

.field private mGoogleIsAssistant:Z

.field private mNavigationMode:I

.field private mNgaIsAssistant:Z

.field private final mNgaMessageHandler:Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;

.field private final mNgaUiController:Lcom/google/android/systemui/assist/uihints/NgaUiController;

.field private final mOnProcessBundle:Ljava/lang/Runnable;

.field private final mOpaEnabledReceiver:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

.field private mSqueezeSetUp:Z

.field private mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$jY1Cb72CdvE9sdSZy4_BSK6r4RU(Lcom/google/android/systemui/assist/AssistManagerGoogle;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oUrDAfVZ0LoRt1Rzpl79AcfrkIs(Lcom/google/android/systemui/assist/AssistManagerGoogle;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->lambda$new$1(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ye-LuWpAmlHa7Hy4Okxe3dzwnRE(Lcom/google/android/systemui/assist/AssistManagerGoogle;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->lambda$new$2()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Lcom/android/systemui/assist/AssistHandleBehaviorController;Lcom/google/android/systemui/assist/uihints/NgaUiController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/google/android/systemui/assist/OpaEnabledReceiver;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/recents/OverviewProxyService;Lcom/google/android/systemui/assist/OpaEnabledDispatcher;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;Ldagger/Lazy;Landroid/os/Handler;Lcom/android/systemui/assist/ui/DefaultUiController;Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;Lcom/android/systemui/assist/AssistLogger;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Landroid/content/Context;",
            "Lcom/android/internal/app/AssistUtils;",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController;",
            "Lcom/google/android/systemui/assist/uihints/NgaUiController;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/google/android/systemui/assist/OpaEnabledReceiver;",
            "Lcom/android/systemui/assist/PhoneStateMonitor;",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            "Lcom/google/android/systemui/assist/OpaEnabledDispatcher;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/assist/ui/DefaultUiController;",
            "Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;",
            "Lcom/android/systemui/assist/AssistLogger;",
            ")V"
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v13, p14

    move-object/from16 v14, p19

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p13

    move-object/from16 v9, p16

    move-object/from16 v10, p18

    move-object/from16 v11, p20

    .line 96
    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/assist/AssistManager;-><init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Lcom/android/systemui/assist/AssistHandleBehaviorController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ldagger/Lazy;Lcom/android/systemui/assist/ui/DefaultUiController;Lcom/android/systemui/assist/AssistLogger;)V

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, v12, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mCheckAssistantStatus:Z

    move-object/from16 v0, p17

    .line 108
    iput-object v0, v12, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiHandler:Landroid/os/Handler;

    move-object/from16 v0, p7

    .line 109
    iput-object v0, v12, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mOpaEnabledReceiver:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    move-object/from16 v0, p10

    .line 111
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->addOpaEnabledListener(Lcom/google/android/systemui/assist/OpaEnabledListener;)V

    .line 113
    new-instance v0, Lcom/google/android/systemui/assist/AssistManagerGoogle$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle$1;-><init>(Lcom/google/android/systemui/assist/AssistManagerGoogle;)V

    move-object/from16 v1, p11

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    move-object/from16 v0, p5

    .line 119
    iput-object v0, v12, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNgaUiController:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    .line 120
    iput-object v14, v12, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mDefaultUiController:Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;

    .line 122
    iput-object v14, v12, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    .line 124
    new-instance v0, Lcom/google/android/systemui/assist/AssistManagerGoogle-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle-$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/AssistManagerGoogle;)V

    move-object/from16 v1, p12

    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v0

    iput v0, v12, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNavigationMode:I

    .line 127
    iput-object v13, v12, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    .line 128
    new-instance v0, Lcom/google/android/systemui/assist/AssistManagerGoogle-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle-$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/assist/AssistManagerGoogle;)V

    invoke-virtual {v13, v0}, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->registerAssistantPresenceChangeListener(Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler$AssistantPresenceChangeListener;)V

    move-object/from16 v0, p15

    .line 160
    iput-object v0, v12, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNgaMessageHandler:Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;

    .line 161
    new-instance v0, Lcom/google/android/systemui/assist/AssistManagerGoogle-$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle-$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/assist/AssistManagerGoogle;)V

    iput-object v0, v12, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mOnProcessBundle:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Lcom/google/android/systemui/assist/OpaEnabledReceiver;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mOpaEnabledReceiver:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Lcom/android/systemui/assist/AssistLogger;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Lcom/android/systemui/assist/AssistLogger;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/assist/AssistManagerGoogle;)V
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->requestAssistHandles()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Ldagger/Lazy;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mSysUiState:Ldagger/Lazy;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Ljava/lang/Runnable;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mOnProcessBundle:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNgaMessageHandler:Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;

    return-object p0
.end method

.method private checkSqueezeGestureStatus()V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    .line 289
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_gesture_setup_complete"

    const/4 v2, 0x0

    .line 288
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    .line 290
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mSqueezeSetUp:Z

    return-void
.end method

.method private synthetic lambda$new$0(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNavigationMode:I

    return-void
.end method

.method private synthetic lambda$new$1(ZZ)V
    .locals 3

    .line 138
    iget-boolean v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mGoogleIsAssistant:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNgaIsAssistant:Z

    if-eq v0, p2, :cond_4

    :cond_0
    if-eqz p2, :cond_1

    .line 141
    iget-object v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    iget-object v1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNgaUiController:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    .line 143
    iget-object v1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNgaUiController:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    iput-object v1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    .line 144
    iget-object v1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/systemui/assist/AssistManagerGoogle-$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/google/android/systemui/assist/AssistManagerGoogle-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/assist/AssistManager$UiController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    iget-object v1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mDefaultUiController:Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    .line 149
    iget-object v1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mDefaultUiController:Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;

    iput-object v1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    .line 150
    iget-object v1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/systemui/assist/AssistManagerGoogle-$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/google/android/systemui/assist/AssistManagerGoogle-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/assist/AssistManager$UiController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mDefaultUiController:Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;->setGoogleAssistant(Z)V

    .line 154
    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mGoogleIsAssistant:Z

    .line 155
    iput-boolean p2, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNgaIsAssistant:Z

    :cond_4
    const/4 p1, 0x0

    .line 158
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mCheckAssistantStatus:Z

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->requestAssistantPresenceUpdate()V

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mCheckAssistantStatus:Z

    return-void
.end method


# virtual methods
.method public addOpaEnabledListener(Lcom/google/android/systemui/assist/OpaEnabledListener;)V
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mOpaEnabledReceiver:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->addOpaEnabledListener(Lcom/google/android/systemui/assist/OpaEnabledListener;)V

    return-void
.end method

.method public dispatchOpaEnabledState()V
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mOpaEnabledReceiver:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->dispatchOpaEnabledState()V

    return-void
.end method

.method public isActiveAssistantNga()Z
    .locals 0

    .line 274
    iget-boolean p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNgaIsAssistant:Z

    return p0
.end method

.method protected logStartAssistLegacy(II)V
    .locals 0

    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager;->toLoggingSubType(II)I

    move-result p1

    .line 253
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->isNgaAssistant()Z

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, p1

    .line 255
    new-instance p1, Landroid/metrics/LogMaker;

    const/16 p2, 0x6b4

    invoke-direct {p1, p2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p2, 0x1

    .line 257
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 258
    invoke-virtual {p1, p0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 255
    invoke-static {p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public onGestureCompletion(F)V
    .locals 1

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mCheckAssistantStatus:Z

    .line 241
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 242
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    div-float/2addr p1, v0

    invoke-interface {p0, p1}, Lcom/android/systemui/assist/AssistManager$UiController;->onGestureCompletion(F)V

    return-void
.end method

.method public onInvocationProgress(IF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mCheckAssistantStatus:Z

    if-ne p1, v1, :cond_1

    .line 224
    invoke-direct {p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->checkSqueezeGestureStatus()V

    .line 227
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mCheckAssistantStatus:Z

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->requestAssistantPresenceUpdate()V

    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mCheckAssistantStatus:Z

    :cond_2
    if-ne p1, v1, :cond_3

    .line 233
    iget-boolean v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mSqueezeSetUp:Z

    if-eqz v0, :cond_4

    .line 234
    :cond_3
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager$UiController;->onInvocationProgress(IF)V

    :cond_4
    return-void
.end method

.method protected registerVoiceInteractionSessionListener()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    new-instance v1, Lcom/google/android/systemui/assist/AssistManagerGoogle$2;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle$2;-><init>(Lcom/google/android/systemui/assist/AssistManagerGoogle;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V

    return-void
.end method

.method public shouldShowOrb()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldUseHomeButtonAnimations()Z
    .locals 0

    .line 169
    iget p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNavigationMode:I

    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
