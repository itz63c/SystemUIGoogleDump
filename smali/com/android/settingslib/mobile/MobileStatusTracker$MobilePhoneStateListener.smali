.class Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "MobileStatusTracker.java"

# interfaces
.implements Landroid/telephony/PhoneStateListener$ServiceStateChangedListener;
.implements Landroid/telephony/PhoneStateListener$SignalStrengthsChangedListener;
.implements Landroid/telephony/PhoneStateListener$CallStateChangedListener;
.implements Landroid/telephony/PhoneStateListener$DataConnectionStateChangedListener;
.implements Landroid/telephony/PhoneStateListener$DataActivityListener;
.implements Landroid/telephony/PhoneStateListener$CarrierNetworkChangeListener;
.implements Landroid/telephony/PhoneStateListener$ActiveDataSubscriptionIdChangedListener;
.implements Landroid/telephony/PhoneStateListener$DisplayInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/mobile/MobileStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobilePhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/mobile/MobileStatusTracker;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/mobile/MobileStatusTracker;Lcom/android/settingslib/mobile/MobileStatusTracker$1;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker;)V

    return-void
.end method


# virtual methods
.method public onActiveDataSubscriptionIdChanged(I)V
    .locals 3

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    .line 176
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActiveDataSubscriptionIdChanged: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$400(Lcom/android/settingslib/mobile/MobileStatusTracker;)V

    .line 180
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-result-object p1

    const/4 v0, 0x1

    new-instance v1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    .line 181
    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    .line 180
    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public onCarrierNetworkChange(Z)V
    .locals 3

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    .line 166
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCarrierNetworkChange: active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->carrierNetworkChangeMode:Z

    .line 170
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-result-object p1

    const/4 v0, 0x1

    new-instance v1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    .line 171
    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    .line 170
    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public onDataActivity(I)V
    .locals 3

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataActivity: direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0, p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$300(Lcom/android/settingslib/mobile/MobileStatusTracker;I)V

    .line 160
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-result-object p1

    const/4 v0, 0x0

    new-instance v1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    .line 161
    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    .line 160
    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p2}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p2

    iput p1, p2, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->dataState:I

    .line 150
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-result-object p1

    const/4 p2, 0x1

    new-instance v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    .line 151
    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    .line 150
    invoke-interface {p1, p2, v0}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 3

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    .line 186
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayInfoChanged: telephonyDisplayInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object v0

    iput-object p1, v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 190
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-result-object p1

    const/4 v0, 0x1

    new-instance v1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    .line 191
    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    .line 190
    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged voiceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-nez p1, :cond_0

    move-object v3, v2

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " dataState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    goto :goto_1

    .line 136
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object v0

    iput-object p1, v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->serviceState:Landroid/telephony/ServiceState;

    .line 139
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-result-object p1

    const/4 v0, 0x1

    new-instance v1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    .line 140
    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    .line 139
    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChanged signalStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 124
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object v0

    iput-object p1, v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->signalStrength:Landroid/telephony/SignalStrength;

    .line 127
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-result-object p1

    const/4 v0, 0x1

    new-instance v1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobilePhoneStateListener;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    .line 128
    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    .line 127
    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method
