.class public Lcom/android/systemui/statusbar/policy/MobileSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController<",
        "Lcom/android/settingslib/SignalIcon$MobileState;",
        "Lcom/android/settingslib/SignalIcon$MobileIconGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final SSDF:Ljava/text/SimpleDateFormat;


# instance fields
.field private mCallback:Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

.field private mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

.field private mDataState:I

.field private mDefaultIcons:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field private final mDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

.field private final mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

.field private mImsType:I

.field mInflateSignalStrengths:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLastLevel:I

.field private mLastWlanCrossSimLevel:I

.field private mLastWlanLevel:I

.field private mLastWwanLevel:I

.field private final mMobileStatusHistory:[Ljava/lang/String;

.field private mMobileStatusHistoryIndex:I

.field mMobileStatusTracker:Lcom/android/settingslib/mobile/MobileStatusTracker;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mNetworkNameDefault:Ljava/lang/String;

.field private final mNetworkNameSeparator:Ljava/lang/String;

.field mNetworkToIconLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/SignalIcon$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/database/ContentObserver;

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field private final mProviderModel:Z

.field private final mReceiverHandler:Landroid/os/Handler;

.field private mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field final mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field private final mTryRegisterIms:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->SSDF:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/mobile/MobileMappings$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;Landroid/os/Looper;)V
    .locals 11

    move-object v6, p0

    move v7, p3

    move-object/from16 v8, p9

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobileSignalController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    const/4 v0, 0x1

    .line 87
    iput v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsType:I

    const/4 v0, 0x0

    .line 96
    iput v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    .line 97
    new-instance v1, Landroid/telephony/TelephonyDisplayInfo;

    invoke-direct {v1, v0, v0}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 105
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    .line 116
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusHistory:[Ljava/lang/String;

    .line 284
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$4;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTryRegisterIms:Ljava/lang/Runnable;

    move-object v0, p2

    .line 129
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-object v1, p4

    .line 130
    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v4, p8

    .line 131
    iput-object v4, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

    move-object/from16 v3, p7

    .line 132
    iput-object v3, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 133
    sget v0, Lcom/android/systemui/R$string;->status_bar_network_name_separator:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    const v0, 0x104045d

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .line 137
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mReceiverHandler:Landroid/os/Handler;

    .line 139
    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    invoke-static {v2}, Lcom/android/settingslib/mobile/MobileMappings;->mapIconSets(Lcom/android/settingslib/mobile/MobileMappings$Config;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    .line 140
    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    invoke-static {v2}, Lcom/android/settingslib/mobile/MobileMappings;->getDefaultIcons(Lcom/android/settingslib/mobile/MobileMappings$Config;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object v2

    iput-object v2, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 142
    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_0
    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mLastState:Lcom/android/settingslib/SignalIcon$State;

    move-object v5, v2

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v9, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v10, v9

    check-cast v10, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-object v0, v10, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    iput-object v0, v5, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    .line 145
    move-object v5, v2

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    move-object v10, v9

    check-cast v10, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-object v0, v10, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    iput-object v0, v5, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    .line 146
    move-object v0, v2

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    move-object v5, v9

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-boolean v7, v5, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    iput-boolean v7, v0, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    .line 147
    check-cast v2, Lcom/android/settingslib/SignalIcon$MobileState;

    check-cast v9, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object v0, v9, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iput-object v0, v2, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 148
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Handler;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    .line 154
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$2;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCallback:Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    .line 183
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 228
    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    .line 229
    new-instance v7, Lcom/android/settingslib/mobile/MobileStatusTracker;

    iget-object v5, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCallback:Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-object v0, v7

    move-object v1, p4

    move-object/from16 v2, p9

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/mobile/MobileStatusTracker;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Looper;Landroid/telephony/SubscriptionInfo;Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;)V

    iput-object v7, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusTracker:Lcom/android/settingslib/mobile/MobileStatusTracker;

    .line 231
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    const-string v1, "settings_provider_model"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mProviderModel:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method static synthetic access$100()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 73
    sget-object v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->SSDF:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/os/Handler;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mReceiverHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ims/ImsMmTelManager;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Ljava/lang/Runnable;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTryRegisterIms:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/MobileSignalController;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->recordLastMobileStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/MobileSignalController;Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileStatus(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .locals 0

    .line 73
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsType:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWwanLevel:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/MobileSignalController;IZ)I
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/MobileSignalController;IZ)Ljava/lang/String;
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWlanLevel:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWlanCrossSimLevel:I

    return p0
.end method

.method private checkDefaultData()V
    .locals 3

    .line 757
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, v1, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-eq v1, v2, :cond_0

    .line 758
    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->defaultDataOff:Z

    return-void

    .line 762
    :cond_0
    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isDataControllerDisabled()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->defaultDataOff:Z

    return-void
.end method

.method private getCallStrengthDescription(IZ)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 599
    sget-object p2, Lcom/android/settingslib/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    aget p1, p2, p1

    .line 598
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 599
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 601
    :cond_0
    sget-object p2, Lcom/android/settingslib/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget p1, p2, p1

    .line 600
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 601
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getCallStrengthIcon(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 592
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->WIFI_CALL_STRENGTH_ICONS:[I

    aget p0, p0, p1

    goto :goto_0

    .line 593
    :cond_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->MOBILE_CALL_STRENGTH_ICONS:[I

    aget p0, p0, p1

    :goto_0
    return p0
.end method

.method private getCdmaLevel(Landroid/telephony/SignalStrength;)I
    .locals 1

    .line 555
    const-class p0, Landroid/telephony/CellSignalStrengthCdma;

    .line 556
    invoke-virtual {p1, p0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 557
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 558
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private getNumLevels()I
    .locals 0

    .line 320
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    if-eqz p0, :cond_0

    .line 321
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 323
    :cond_0
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result p0

    return p0
.end method

.method private isCarrierNetworkChangeActive()Z
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean p0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    return p0
.end method

.method private isCdma()Z
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRoaming()Z
    .locals 3

    .line 465
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierNetworkChangeActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 469
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCdmaEnhancedRoamingIndicatorDisplayNumber()I

    move-result p0

    if-eq p0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 472
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method private recordLastMobileStatus(Ljava/lang/String;)V
    .locals 2

    .line 784
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusHistory:[Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusHistoryIndex:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 785
    rem-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusHistoryIndex:I

    return-void
.end method

.method private updateDataSim()V
    .locals 3

    .line 496
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

    invoke-virtual {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;->getActiveDataSubId()I

    move-result v0

    .line 497
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 498
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    goto :goto_1

    .line 507
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p0, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    :goto_1
    return-void
.end method

.method private updateInflateSignalStrength()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 316
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 315
    invoke-static {v0, v1}, Lcom/android/settingslib/net/SignalStrengthUtil;->shouldInflateSignalStrength(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    return-void
.end method

.method private updateMobileStatus(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V
    .locals 3

    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v2, p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->activityIn:Z

    iput-boolean v2, v1, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    .line 565
    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v2, p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->activityOut:Z

    iput-boolean v2, v1, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    .line 566
    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v2, p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->dataSim:Z

    iput-boolean v2, v1, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    .line 567
    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v1, p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->carrierNetworkChangeMode:Z

    iput-boolean v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    .line 568
    iget v0, p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->dataState:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    .line 569
    iget-object v0, p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->signalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyMobileLevelChangeIfNecessary(Landroid/telephony/SignalStrength;)V

    .line 570
    iget-object v0, p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->signalStrength:Landroid/telephony/SignalStrength;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 571
    iget-object v0, p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 572
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 573
    :goto_0
    iget-object p1, p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->serviceState:Landroid/telephony/ServiceState;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p1, :cond_1

    .line 574
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    .line 579
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mProviderModel:Z

    if-eqz v2, :cond_4

    if-eq v0, p1, :cond_4

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    if-nez p1, :cond_4

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 585
    :goto_2
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_no_calling_sms:I

    sget v2, Lcom/android/settingslib/AccessibilityContentDescriptions;->NO_CALLING:I

    .line 586
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 587
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    :cond_4
    return-void
.end method

.method private final updateTelephony()V
    .locals 6

    .line 704
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTelephonySignalStrength: hasService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 706
    invoke-static {v2}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " displayInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 705
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->checkDefaultData()V

    .line 710
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    .line 711
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v1, v1, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v1, :cond_2

    .line 712
    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSignalLevel(Landroid/telephony/SignalStrength;)I

    move-result v1

    iput v1, v0, Lcom/android/settingslib/SignalIcon$State;->level:I

    .line 715
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileMappings;->getIconKey(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object v0

    .line 716
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 717
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/SignalIcon$IconGroup;

    iput-object v0, v1, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    goto :goto_1

    .line 719
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object v1, v0, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 721
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    move-object v4, v0

    check-cast v4, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v4, v4, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    iput-boolean v2, v1, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    .line 724
    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    .line 725
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierNetworkChangeActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 726
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object v1, v0, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    goto :goto_3

    .line 727
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v0, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowDataRatIcon:Z

    if-nez v0, :cond_7

    .line 728
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

    invoke-virtual {v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;->getDefaultDataSubId()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 729
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object v1, v0, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    goto :goto_3

    .line 731
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object v1, v0, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 734
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v2, v1

    check-cast v2, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v2, v2, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    if-eq v0, v2, :cond_8

    .line 735
    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    .line 736
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    .line 739
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_9

    .line 740
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 741
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    .line 744
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v1, v1, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    if-eqz v1, :cond_a

    .line 746
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 747
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    .line 750
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method


# virtual methods
.method protected cleanState()Lcom/android/settingslib/SignalIcon$MobileState;
    .locals 0

    .line 444
    new-instance p0, Lcom/android/settingslib/SignalIcon$MobileState;

    invoke-direct {p0}, Lcom/android/settingslib/SignalIcon$MobileState;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic cleanState()Lcom/android/settingslib/SignalIcon$State;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->cleanState()Lcom/android/settingslib/SignalIcon$MobileState;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6

    .line 795
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSignalStrength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTelephonyDisplayInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDataState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInflateSignalStrengths="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  isDataDisabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  MobileStatusHistory"

    .line 803
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x40

    if-ge v0, v2, :cond_1

    .line 806
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusHistory:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 811
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusHistoryIndex:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 812
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusHistoryIndex:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v1

    if-lt v0, v3, :cond_2

    .line 813
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Previous MobileStatus("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusHistoryIndex:I

    add-int/2addr v4, v2

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusHistory:[Ljava/lang/String;

    and-int/lit8 v5, v0, 0x3f

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getCurrentIconId()I
    .locals 6

    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, v1, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-ne v1, v2, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result p0

    invoke-static {p0}, Lcom/android/settingslib/graph/SignalDrawable;->getCarrierChangeState(I)I

    move-result p0

    return p0

    .line 330
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v1, v1, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 331
    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget v1, v1, Lcom/android/settingslib/SignalIcon$State;->level:I

    .line 332
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 335
    :cond_1
    move-object v3, v0

    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$MobileState;->userSetup:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    move-object v3, v0

    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v3, v3, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-eq v3, v5, :cond_2

    move-object v3, v0

    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v3, v3, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-ne v3, v5, :cond_3

    move-object v3, v0

    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$MobileState;->defaultDataOff:Z

    if-eqz v3, :cond_3

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v2

    .line 339
    :goto_0
    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget v0, v0, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    if-nez v3, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    move v2, v4

    .line 341
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result p0

    invoke-static {v1, p0, v2}, Lcom/android/settingslib/graph/SignalDrawable;->getState(IIZ)I

    move-result p0

    return p0

    .line 342
    :cond_7
    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v0, v0, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz v0, :cond_8

    .line 343
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result p0

    invoke-static {p0}, Lcom/android/settingslib/graph/SignalDrawable;->getEmptyState(I)I

    move-result p0

    return p0

    :cond_8
    return v2
.end method

.method getNetworkNameForCarrierWiFi()Ljava/lang/String;
    .locals 0

    .line 460
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQsCurrentIconId()I
    .locals 0

    .line 351
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId()I

    move-result p0

    return p0
.end method

.method getSignalLevel(Landroid/telephony/SignalStrength;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 691
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v0, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowCdmaRssi:Z

    if-eqz v0, :cond_1

    .line 692
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCdmaLevel(Landroid/telephony/SignalStrength;)I

    move-result p0

    return p0

    .line 694
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p0

    return p0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 8

    .line 481
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "android.telephony.extra.SHOW_SPN"

    const/4 v1, 0x0

    .line 483
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v0, "android.telephony.extra.SPN"

    .line 484
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "android.telephony.extra.DATA_SPN"

    .line 485
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "android.telephony.extra.SHOW_PLMN"

    .line 486
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v0, "android.telephony.extra.PLMN"

    .line 487
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 483
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    goto :goto_0

    :cond_0
    const-string p1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 489
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 490
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    .line 491
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    :cond_1
    :goto_0
    return-void
.end method

.method isDataDisabled()Z
    .locals 0

    .line 771
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataConnectionAllowed()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isEmergencyOnly()Z
    .locals 0

    .line 452
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInService()Z
    .locals 0

    .line 456
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result p0

    return p0
.end method

.method notifyDefaultMobileLevelChange(I)V
    .locals 4

    .line 650
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mProviderModel:Z

    if-nez v0, :cond_0

    return-void

    .line 653
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDefaultMobileLevelChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mTag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWlanCrossSimLevel:I

    .line 655
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    return-void

    .line 658
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 660
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result v3

    .line 661
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v3, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 662
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    return-void
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 19

    move-object/from16 v0, p0

    .line 358
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCarrierMergedWifi(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 361
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getIcons()Lcom/android/settingslib/SignalIcon$IconGroup;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getContentDescription()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    iget v3, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataContentDescription:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 370
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 369
    invoke-static {v3, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    .line 370
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 371
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget v5, v5, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    if-nez v5, :cond_1

    .line 372
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->data_connection_no_internet:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    move-object v11, v3

    .line 374
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v5, v3

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v5, v5, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const/4 v7, 0x1

    if-eq v5, v6, :cond_2

    move-object v5, v3

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v5, v5, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-ne v5, v6, :cond_3

    :cond_2
    move-object v5, v3

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$MobileState;->userSetup:Z

    if-eqz v5, :cond_3

    move v5, v7

    goto :goto_0

    :cond_3
    move v5, v4

    .line 378
    :goto_0
    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mProviderModel:Z

    const/4 v8, 0x0

    if-eqz v6, :cond_12

    .line 380
    move-object v6, v3

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    if-nez v6, :cond_5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v5, v4

    goto :goto_2

    :cond_5
    :goto_1
    move v5, v7

    .line 386
    :goto_2
    move-object v6, v3

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    if-eqz v6, :cond_a

    move-object v6, v3

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    if-eqz v6, :cond_a

    if-nez v5, :cond_7

    .line 388
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v6, v6, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowDataRatIcon:Z

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    move v6, v4

    goto :goto_4

    :cond_7
    :goto_3
    iget v6, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->qsDataType:I

    .line 389
    :goto_4
    new-instance v9, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    move-object v10, v3

    check-cast v10, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v10, v10, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz v10, :cond_8

    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    if-nez v3, :cond_8

    move v3, v7

    goto :goto_5

    :cond_8
    move v3, v4

    .line 390
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getQsCurrentIconId()I

    move-result v10

    invoke-direct {v9, v3, v10, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 391
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v10, v3

    check-cast v10, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v10, v10, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    if-eqz v10, :cond_9

    goto :goto_6

    :cond_9
    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v8, v3, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    :goto_6
    move-object v13, v8

    move v8, v6

    move-object v6, v9

    goto :goto_7

    :cond_a
    move-object v6, v8

    move-object v13, v6

    move v8, v4

    .line 393
    :goto_7
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v9, v3

    check-cast v9, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v9, v9, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    if-eqz v9, :cond_b

    move-object v9, v3

    check-cast v9, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v9, v9, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    if-nez v9, :cond_b

    move-object v9, v3

    check-cast v9, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v9, v9, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    if-eqz v9, :cond_b

    move v9, v7

    goto :goto_8

    :cond_b
    move v9, v4

    .line 396
    :goto_8
    move-object v10, v3

    check-cast v10, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v10, v10, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    if-eqz v10, :cond_c

    move-object v10, v3

    check-cast v10, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v10, v10, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    if-nez v10, :cond_c

    move-object v10, v3

    check-cast v10, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v10, v10, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    if-eqz v10, :cond_c

    move v10, v7

    goto :goto_9

    :cond_c
    move v10, v4

    .line 399
    :goto_9
    move-object v14, v3

    check-cast v14, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v14, v14, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    if-eqz v14, :cond_d

    move-object v14, v3

    check-cast v14, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v14, v14, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    if-eqz v14, :cond_d

    move v14, v7

    goto :goto_a

    :cond_d
    move v14, v4

    :goto_a
    and-int/2addr v5, v14

    if-eqz v5, :cond_e

    .line 400
    move-object v14, v3

    check-cast v14, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v14, v14, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    if-nez v14, :cond_e

    move/from16 v17, v7

    goto :goto_b

    :cond_e
    move/from16 v17, v4

    :goto_b
    if-nez v5, :cond_10

    .line 401
    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v14, v14, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowDataRatIcon:Z

    if-eqz v14, :cond_f

    goto :goto_c

    :cond_f
    move v14, v4

    goto :goto_d

    :cond_10
    :goto_c
    iget v14, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataType:I

    .line 402
    :goto_d
    move-object v15, v3

    check-cast v15, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v15, v15, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    or-int/2addr v5, v15

    .line 403
    new-instance v15, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    if-eqz v5, :cond_11

    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    if-nez v3, :cond_11

    move v4, v7

    .line 404
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId()I

    move-result v3

    invoke-direct {v15, v4, v3, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 405
    iget-boolean v1, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->isWide:Z

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 407
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    move-object/from16 v4, p1

    move-object v5, v15

    move v7, v14

    move v14, v1

    move v15, v2

    move/from16 v16, v0

    .line 405
    invoke-interface/range {v4 .. v17}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V

    goto/16 :goto_1d

    .line 410
    :cond_12
    move-object v6, v3

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    if-nez v6, :cond_14

    if-eqz v5, :cond_13

    goto :goto_e

    :cond_13
    move v6, v4

    goto :goto_f

    :cond_14
    :goto_e
    move v6, v7

    .line 411
    :goto_f
    new-instance v9, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    move-object v10, v3

    check-cast v10, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v10, v10, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz v10, :cond_15

    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    if-nez v3, :cond_15

    move v3, v7

    goto :goto_10

    :cond_15
    move v3, v4

    .line 413
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId()I

    move-result v10

    invoke-direct {v9, v3, v10, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 419
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v10, v3

    check-cast v10, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v10, v10, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    if-eqz v10, :cond_1a

    if-nez v6, :cond_17

    .line 421
    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v10, v10, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowDataRatIcon:Z

    if-eqz v10, :cond_16

    goto :goto_11

    :cond_16
    move v10, v4

    goto :goto_12

    :cond_17
    :goto_11
    iget v10, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->qsDataType:I

    .line 422
    :goto_12
    new-instance v13, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    move-object v14, v3

    check-cast v14, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v14, v14, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz v14, :cond_18

    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    if-nez v3, :cond_18

    move v3, v7

    goto :goto_13

    :cond_18
    move v3, v4

    .line 423
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getQsCurrentIconId()I

    move-result v14

    invoke-direct {v13, v3, v14, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 424
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    if-eqz v3, :cond_19

    goto :goto_14

    :cond_19
    check-cast v2, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v8, v2, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    :goto_14
    move-object/from16 v18, v13

    move-object v13, v8

    move-object/from16 v8, v18

    goto :goto_15

    :cond_1a
    move v10, v4

    move-object v13, v8

    .line 426
    :goto_15
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    if-eqz v3, :cond_1b

    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    if-nez v3, :cond_1b

    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    if-eqz v3, :cond_1b

    move v3, v7

    goto :goto_16

    :cond_1b
    move v3, v4

    .line 429
    :goto_16
    move-object v14, v2

    check-cast v14, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v14, v14, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    if-eqz v14, :cond_1c

    move-object v14, v2

    check-cast v14, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v14, v14, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    if-nez v14, :cond_1c

    move-object v14, v2

    check-cast v14, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v14, v14, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    if-eqz v14, :cond_1c

    move v14, v7

    goto :goto_17

    :cond_1c
    move v14, v4

    .line 432
    :goto_17
    move-object v15, v2

    check-cast v15, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v15, v15, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    if-nez v15, :cond_1e

    if-eqz v5, :cond_1d

    goto :goto_18

    :cond_1d
    move v5, v4

    goto :goto_19

    :cond_1e
    :goto_18
    move v5, v7

    :goto_19
    and-int/2addr v5, v6

    if-nez v5, :cond_20

    .line 433
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v5, v5, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowDataRatIcon:Z

    if-eqz v5, :cond_1f

    goto :goto_1a

    :cond_1f
    move v15, v4

    goto :goto_1b

    :cond_20
    :goto_1a
    iget v5, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataType:I

    move v15, v5

    .line 434
    :goto_1b
    move-object v5, v2

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz v5, :cond_21

    check-cast v2, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v2, v2, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    if-nez v2, :cond_21

    move/from16 v17, v7

    goto :goto_1c

    :cond_21
    move/from16 v17, v4

    .line 435
    :goto_1c
    iget-boolean v1, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->isWide:Z

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 437
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    move-object/from16 v4, p1

    move-object v5, v9

    move-object v6, v8

    move v7, v15

    move v8, v10

    move v9, v3

    move v10, v14

    move v14, v1

    move v15, v2

    move/from16 v16, v0

    .line 435
    invoke-interface/range {v4 .. v17}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V

    :goto_1d
    return-void
.end method

.method notifyMobileLevelChangeIfNecessary(Landroid/telephony/SignalStrength;)V
    .locals 4

    .line 666
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mProviderModel:Z

    if-nez v0, :cond_0

    return-void

    .line 669
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSignalLevel(Landroid/telephony/SignalStrength;)I

    move-result p1

    .line 670
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastLevel:I

    if-eq p1, v0, :cond_2

    .line 671
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastLevel:I

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMobileLevelChangeIfNecessary "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mTag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWwanLevel:I

    .line 674
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 675
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    const/4 v2, 0x0

    .line 677
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result v3

    .line 678
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 679
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    if-eqz v0, :cond_2

    .line 682
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyDefaultMobileLevelChange(I)V

    :cond_2
    return-void
.end method

.method notifyWifiLevelChange(I)V
    .locals 3

    .line 634
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mProviderModel:Z

    if-nez v0, :cond_0

    return-void

    .line 637
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyWifiLevelChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mTag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWlanLevel:I

    .line 639
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return-void

    .line 642
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    const/4 v1, 0x1

    .line 644
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result v2

    .line 645
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 646
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    return-void
.end method

.method onMobileDataChanged()V
    .locals 0

    .line 766
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->checkDefaultData()V

    .line 767
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method refreshCallIndicator(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 6

    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 607
    :goto_0
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    sget v4, Lcom/android/systemui/R$drawable;->ic_qs_no_calling_sms:I

    sget v5, Lcom/android/settingslib/AccessibilityContentDescriptions;->NO_CALLING:I

    .line 608
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-interface {p1, v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setCallIndicator(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    .line 611
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsType:I

    if-eq v0, v2, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    goto :goto_1

    .line 625
    :cond_1
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWlanCrossSimLevel:I

    .line 627
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWlanCrossSimLevel:I

    .line 628
    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    goto :goto_1

    .line 619
    :cond_2
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWlanLevel:I

    .line 621
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWlanLevel:I

    .line 622
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    goto :goto_1

    .line 613
    :cond_3
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWwanLevel:I

    .line 615
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWwanLevel:I

    .line 616
    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 630
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-interface {p1, v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setCallIndicator(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    return-void
.end method

.method public registerListener()V
    .locals 5

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusTracker:Lcom/android/settingslib/mobile/MobileStatusTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->setListening(Z)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 275
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 277
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mProviderModel:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mReceiverHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTryRegisterIms:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method setActivity(I)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 776
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq p1, v3, :cond_1

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    :goto_1
    iput-boolean v5, v1, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    .line 778
    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    if-eq p1, v3, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    :cond_2
    move v2, v4

    :cond_3
    iput-boolean v2, v0, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    .line 780
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public setAirplaneMode(Z)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-boolean p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public setCarrierNetworkChangeMode(Z)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-boolean p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    .line 264
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method public setConfiguration(Lcom/android/settingslib/mobile/MobileMappings$Config;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    .line 237
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateInflateSignalStrength()V

    .line 238
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileMappings;->mapIconSets(Lcom/android/settingslib/mobile/MobileMappings$Config;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    .line 239
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileMappings;->getDefaultIcons(Lcom/android/settingslib/mobile/MobileMappings$Config;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 240
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method setImsType(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 790
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsType:I

    return-void
.end method

.method public setUserSetupComplete(Z)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-boolean p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->userSetup:Z

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public unregisterListener()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusTracker:Lcom/android/settingslib/mobile/MobileStatusTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->setListening(Z)V

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, p0}, Landroid/telephony/ims/ImsMmTelManager;->unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    return-void
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 2

    .line 255
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTransportType:I

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTransportType:I

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    .line 258
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    if-nez p2, :cond_1

    check-cast p1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean p1, p1, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput p1, v0, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 516
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->CHATTY:Z

    if-eqz v0, :cond_0

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateNetworkName showSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " spn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dataSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " showPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " plmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarrierLabel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 524
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 528
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    if-eqz p4, :cond_2

    .line 529
    iget-object p4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-eqz p2, :cond_4

    .line 534
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p2, Lcom/android/settingslib/SignalIcon$MobileState;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p2, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    goto :goto_0

    .line 536
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p2, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object p4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object p4, p2, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_6

    if-eqz p3, :cond_6

    .line 539
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_5

    .line 540
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :cond_5
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_7

    .line 545
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p0, Lcom/android/settingslib/SignalIcon$MobileState;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    goto :goto_1

    .line 547
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    :goto_1
    return-void
.end method
