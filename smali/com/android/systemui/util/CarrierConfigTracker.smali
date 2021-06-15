.class public Lcom/android/systemui/util/CarrierConfigTracker;
.super Landroid/content/BroadcastReceiver;
.source "CarrierConfigTracker.java"


# instance fields
.field private final mCallStrengthConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private final mDefaultCallStrengthConfig:Z

.field private final mDefaultNoCallingConfig:Z

.field private final mNoCallingConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCallStrengthConfigs:Landroid/util/SparseArray;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mNoCallingConfigs:Landroid/util/SparseArray;

    .line 45
    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    const-string v0, "display_call_strength_indicator_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultCallStrengthConfig:Z

    .line 52
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    const-string/jumbo v0, "use_ip_for_calling_indicator_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultNoCallingConfig:Z

    return-void
.end method


# virtual methods
.method public getCallStrengthConfig(I)Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCallStrengthConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCallStrengthConfigs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 84
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultCallStrengthConfig:Z

    return p0
.end method

.method public getNoCallingConfig(I)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mNoCallingConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mNoCallingConfigs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 94
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultNoCallingConfig:Z

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 59
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 62
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p2, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string/jumbo v0, "use_ip_for_calling_indicator_bool"

    .line 67
    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "display_call_strength_indicator_bool"

    .line 69
    invoke-virtual {p2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 71
    iget-object v1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCallStrengthConfigs:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mNoCallingConfigs:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method
