.class public Lcom/android/settingslib/mobile/MobileStatusTracker;
.super Ljava/lang/Object;
.source "MobileStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;,
        Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;,
        Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;,
        Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

.field private final mDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

.field private final mMobileStatus:Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiverHandler:Landroid/os/Handler;

.field private final mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;


# direct methods
.method public static synthetic $r8$lambda$hp3_06HtFGHEpyHOUdie5xxysLU(Lcom/android/settingslib/mobile/MobileStatusTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/TelephonyManager;Landroid/os/Looper;Landroid/telephony/SubscriptionInfo;Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mPhone:Landroid/telephony/TelephonyManager;

    .line 60
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mReceiverHandler:Landroid/os/Handler;

    .line 61
    new-instance p2, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker;Lcom/android/settingslib/mobile/MobileStatusTracker$1;)V

    iput-object p2, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 62
    iput-object p3, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 63
    iput-object p4, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

    .line 64
    iput-object p5, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mCallback:Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    .line 65
    new-instance p2, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    invoke-direct {p2}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    .line 66
    invoke-direct {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->updateDataSim()V

    .line 67
    new-instance p2, Lcom/android/settingslib/mobile/MobileStatusTracker-$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker-$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mCallback:Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settingslib/mobile/MobileStatusTracker;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->setActivity(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settingslib/mobile/MobileStatusTracker;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->updateDataSim()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mCallback:Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    new-instance v1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    invoke-direct {v1, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    const/4 p0, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method private setActivity(I)V
    .locals 4

    .line 103
    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->activityIn:Z

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    :cond_2
    move v0, v2

    .line 105
    :cond_3
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->activityOut:Z

    return-void
.end method

.method private updateDataSim()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

    invoke-virtual {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;->getActiveDataSubId()I

    move-result v0

    .line 88
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->dataSim:Z

    goto :goto_1

    .line 98
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iput-boolean v2, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->dataSim:Z

    :goto_1
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mReceiverHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/mediarouter/media/MediaRoute2Provider-$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroidx/mediarouter/media/MediaRoute2Provider-$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {p1, v1, p0}, Landroid/telephony/TelephonyManager;->registerPhoneStateListener(Ljava/util/concurrent/Executor;Landroid/telephony/PhoneStateListener;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {p1, p0}, Landroid/telephony/TelephonyManager;->unregisterPhoneStateListener(Landroid/telephony/PhoneStateListener;)V

    :goto_0
    return-void
.end method
