.class public Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;
.super Ljava/lang/Object;
.source "StatusBarSignalPolicy.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;,
        Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;,
        Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;,
        Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mActivityEnabled:Z

.field private mCallIndicatorStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mForceHideWifi:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHideAirplane:Z

.field private mHideEthernet:Z

.field private mHideMobile:Z

.field private mHideWifi:Z

.field private final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mIsAirplaneMode:Z

.field private mIsWifiEnabled:Z

.field private mMobileStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mSlotAirplane:Ljava/lang/String;

.field private final mSlotEthernet:Ljava/lang/String;

.field private final mSlotMobile:Ljava/lang/String;

.field private final mSlotNoCalling:Ljava/lang/String;

.field private final mSlotVpn:Ljava/lang/String;

.field private final mSlotWifi:Ljava/lang/String;

.field private mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

.field private mWifiVisible:Z


# direct methods
.method public static synthetic $r8$lambda$tDRnuIUJR3EKZHsCAwfsN0p2Fzg(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->updateVpn()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "StatusBarSignalPolicy"

    const/4 v1, 0x4

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsWifiEnabled:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiVisible:Z

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mCallIndicatorStates:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    const v0, 0x10407bc

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    const v0, 0x10407cd

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    const v0, 0x10407dd

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    const v0, 0x10407c6

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    const v0, 0x10407dc

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotVpn:Ljava/lang/String;

    const v0, 0x10407d0

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotNoCalling:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$bool;->config_showActivity:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    .line 86
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 87
    const-class p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 88
    const-class p2, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/SecurityController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 90
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 91
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 92
    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private currentVpnIconId(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 111
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_branded_vpn:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_vpn_ic:I

    :goto_0
    return p0
.end method

.method private getFirstMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 306
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNoCallingState(I)Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;
    .locals 2

    .line 285
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mCallIndicatorStates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;

    .line 286
    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;->subId:I

    if-ne v1, p1, :cond_0

    return-object v0

    .line 290
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected subscription "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatusBarSignalPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getState(I)Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .locals 2

    .line 295
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 296
    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    if-ne v1, p1, :cond_0

    return-object v0

    .line 300
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected subscription "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatusBarSignalPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private hasCorrectSubs(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .line 350
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 351
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 355
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private updateShowWifiSignalSpacer(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->getFirstMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 192
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->signalSpacerVisible:Z

    return-void
.end method

.method private updateVpn()V
    .locals 6

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnBranded()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->currentVpnIconId(Z)I

    move-result v1

    .line 105
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotVpn:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->accessibility_vpn_on:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-interface {v2, v3, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotVpn:Ljava/lang/String;

    invoke-interface {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateWifiIconWithState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 2

    .line 196
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiIconState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "StatusBarSignalPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    if-lez v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setSignalIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 199
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 201
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onStateChanged()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "icon_blacklist"

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconHideList(Landroid/content/Context;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    .line 128
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 131
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 133
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHideAirplane:Z

    if-ne p2, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHideMobile:Z

    if-ne v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHideEthernet:Z

    if-ne p1, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHideWifi:Z

    if-eq v1, v2, :cond_4

    .line 135
    :cond_1
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHideAirplane:Z

    .line 136
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHideMobile:Z

    .line 137
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHideEthernet:Z

    if-nez v1, :cond_3

    .line 138
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mForceHideWifi:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHideWifi:Z

    .line 140
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 141
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public setCallIndicator(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V
    .locals 2

    .line 207
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallIndicator: statusIcon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarSignalPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->getNoCallingState(I)Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 216
    :cond_1
    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_no_calling_sms:I

    if-ne v0, v1, :cond_2

    .line 217
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean v0, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;->isNoCalling:Z

    .line 218
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object p1, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;->noCallingDescription:Ljava/lang/String;

    goto :goto_0

    .line 220
    :cond_2
    iput v0, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;->callStrengthResId:I

    .line 221
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object p1, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;->callStrengthDescription:Ljava/lang/String;

    .line 223
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotNoCalling:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mCallIndicatorStates:Ljava/util/ArrayList;

    .line 224
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 223
    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setCallIndicatorIcons(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public setConnectivityStatus(ZZZ)V
    .locals 3

    .line 370
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConnectivityStatus: noDefaultNetwork = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",noValidatedNetwork = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",noNetworksAvailable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarSignalPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object v0

    .line 377
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->noDefaultNetwork:Z

    .line 378
    iput-boolean p2, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->noValidatedNetwork:Z

    .line 379
    iput-boolean p3, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->noNetworksAvailable:Z

    .line 380
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->slot:Ljava/lang/String;

    .line 381
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->airplaneSpacerVisible:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    if-nez v1, :cond_1

    .line 383
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 384
    sget p1, Lcom/android/systemui/R$drawable;->ic_qs_no_internet_unavailable:I

    iput p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    if-nez p3, :cond_3

    if-eqz v1, :cond_2

    if-eqz v1, :cond_3

    .line 385
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsWifiEnabled:Z

    if-eqz p1, :cond_3

    .line 387
    :cond_2
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 388
    sget p1, Lcom/android/systemui/R$drawable;->ic_qs_no_internet_available:I

    iput p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 390
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 391
    iput p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    .line 393
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->updateWifiIconWithState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 394
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    return-void
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 3

    .line 400
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHideEthernet:Z

    .line 401
    :cond_0
    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    .line 402
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    if-lez v0, :cond_1

    .line 405
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 406
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 408
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 4

    .line 414
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsAirplaneMode: icon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarSignalPolicy"

    .line 415
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHideAirplane:Z

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    .line 419
    iget v3, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    .line 420
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    if-eqz v0, :cond_3

    if-lez v3, :cond_3

    .line 423
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    invoke-interface {v0, v2, v3, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 424
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_2

    .line 426
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    invoke-interface {p1, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_2
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p11

    move/from16 v7, p12

    move/from16 v8, p13

    .line 233
    sget-boolean v9, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->DEBUG:Z

    const-string v10, "StatusBarSignalPolicy"

    const-string v11, ""

    if-eqz v9, :cond_2

    .line 234
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setMobileDataIndicators: statusIcon = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    move-object v13, v11

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_0
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",qsIcon = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    move-object v13, v11

    goto :goto_1

    .line 236
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",statusType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",qsType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",activityIn = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",activityOut = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",typeContentDescription = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ",typeContentDescriptionHtml = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ",description = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ",isWide = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",subId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",roaming = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",showTriangle = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 234
    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_2
    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->getState(I)Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v6

    if-nez v6, :cond_3

    return-void

    .line 255
    :cond_3
    iget v12, v6, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eq v2, v12, :cond_5

    if-eqz v2, :cond_4

    if-nez v12, :cond_5

    :cond_4
    move v12, v13

    goto :goto_2

    :cond_5
    move v12, v14

    .line 257
    :goto_2
    iget-boolean v15, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v15, :cond_6

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHideMobile:Z

    if-nez v15, :cond_6

    move v15, v13

    goto :goto_3

    :cond_6
    move v15, v14

    :goto_3
    iput-boolean v15, v6, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 258
    iget v15, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v15, v6, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    .line 259
    iput v2, v6, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    .line 260
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v1, v6, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->contentDescription:Ljava/lang/String;

    .line 261
    iput-object v5, v6, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/CharSequence;

    .line 262
    iput-boolean v8, v6, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showTriangle:Z

    .line 263
    iput-boolean v7, v6, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    if-eqz v3, :cond_7

    .line 264
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    if-eqz v1, :cond_7

    move v1, v13

    goto :goto_4

    :cond_7
    move v1, v14

    :goto_4
    iput-boolean v1, v6, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityIn:Z

    if-eqz v4, :cond_8

    .line 265
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    move v13, v14

    :goto_5
    iput-boolean v13, v6, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityOut:Z

    if-eqz v9, :cond_a

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MobileIconStates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    if-nez v2, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_6
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_a
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->access$100(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setMobileIcons(Ljava/lang/String;Ljava/util/List;)V

    if-eqz v12, :cond_b

    .line 275
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object v1

    .line 276
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->updateShowWifiSignalSpacer(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 277
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 278
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->updateWifiIconWithState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 279
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    :cond_b
    return-void
.end method

.method public setNoSims(ZZ)V
    .locals 0

    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 320
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSubs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarSignalPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->hasCorrectSubs(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeAllIconsForSlot(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotNoCalling:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeAllIconsForSlot(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 329
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mCallIndicatorStates:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 330
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mCallIndicatorStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 331
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_6

    .line 333
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;-><init>(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;

    .line 336
    iget v6, v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;->subId:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    if-ne v6, v8, :cond_3

    .line 337
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mCallIndicatorStates:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_5

    .line 343
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mCallIndicatorStates:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;

    .line 344
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$CallIndicatorIconState;-><init>(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;)V

    .line 343
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V
    .locals 3

    .line 149
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiIndicators: enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",statusIcon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    if-nez p2, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",qsIcon = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1

    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",activityIn = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",activityOut = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",description = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",isTransient = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",statusLabel = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p6, "StatusBarSignalPolicy"

    .line 150
    invoke-static {p6, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_2
    iget-boolean p3, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-eqz p3, :cond_3

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHideWifi:Z

    if-nez p3, :cond_3

    move p3, p7

    goto :goto_2

    :cond_3
    move p3, p6

    :goto_2
    if-eqz p4, :cond_4

    .line 161
    iget-boolean p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    if-eqz p4, :cond_4

    if-eqz p3, :cond_4

    move p4, p7

    goto :goto_3

    :cond_4
    move p4, p6

    :goto_3
    if-eqz p5, :cond_5

    .line 162
    iget-boolean p5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    if-eqz p5, :cond_5

    if-eqz p3, :cond_5

    move p5, p7

    goto :goto_4

    :cond_5
    move p5, p6

    .line 163
    :goto_4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsWifiEnabled:Z

    .line 165
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object p1

    .line 167
    iget-object p8, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v0, p8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->noDefaultNetwork:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->noNetworksAvailable:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    if-nez v0, :cond_6

    .line 169
    iput-boolean p7, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 170
    sget p2, Lcom/android/systemui/R$drawable;->ic_qs_no_internet_unavailable:I

    iput p2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    goto :goto_5

    .line 171
    :cond_6
    iget-boolean v0, p8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->noValidatedNetwork:Z

    if-eqz v0, :cond_8

    iget-boolean p8, p8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->noNetworksAvailable:Z

    if-nez p8, :cond_8

    iget-boolean p8, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    if-eqz p8, :cond_7

    if-eqz p8, :cond_8

    iget-boolean p8, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsWifiEnabled:Z

    if-eqz p8, :cond_8

    .line 173
    :cond_7
    iput-boolean p7, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 174
    sget p2, Lcom/android/systemui/R$drawable;->ic_qs_no_internet_available:I

    iput p2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    goto :goto_5

    .line 176
    :cond_8
    iput-boolean p3, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 177
    iget p3, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput p3, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    .line 178
    iput-boolean p4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityIn:Z

    .line 179
    iput-boolean p5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityOut:Z

    .line 180
    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->contentDescription:Ljava/lang/String;

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->getFirstMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 182
    iget p2, p2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-eqz p2, :cond_9

    move p6, p7

    :cond_9
    iput-boolean p6, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->signalSpacerVisible:Z

    .line 184
    :goto_5
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->slot:Ljava/lang/String;

    .line 185
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    iput-boolean p2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->airplaneSpacerVisible:Z

    .line 186
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->updateWifiIconWithState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 187
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    return-void
.end method
