.class Lcom/android/systemui/statusbar/policy/MobileSignalController$3;
.super Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;-><init>(Landroid/content/Context;Lcom/android/settingslib/mobile/MobileMappings$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-direct {p0}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistered: attributes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getTransportType()I

    move-result v0

    .line 188
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getAttributeFlags()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 190
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$402(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    .line 191
    new-instance p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 193
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$500(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v3

    invoke-static {v0, v3, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$600(Lcom/android/systemui/statusbar/policy/MobileSignalController;IZ)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 194
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$500(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v4

    invoke-static {v3, v4, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$700(Lcom/android/systemui/statusbar/policy/MobileSignalController;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v2, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 195
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    if-nez p1, :cond_1

    .line 198
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$402(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    .line 199
    new-instance p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 201
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$800(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$600(Lcom/android/systemui/statusbar/policy/MobileSignalController;IZ)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 202
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$800(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v3

    invoke-static {v1, v3, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$700(Lcom/android/systemui/statusbar/policy/MobileSignalController;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v2, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 203
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 206
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$402(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    .line 207
    new-instance p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 209
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$900(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v3

    invoke-static {v0, v3, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$600(Lcom/android/systemui/statusbar/policy/MobileSignalController;IZ)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 211
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$900(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v4

    .line 210
    invoke-static {v3, v4, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$700(Lcom/android/systemui/statusbar/policy/MobileSignalController;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v2, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 212
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 5

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeregistered: info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$402(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    .line 221
    new-instance p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 223
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$500(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$600(Lcom/android/systemui/statusbar/policy/MobileSignalController;IZ)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 224
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$500(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v4

    invoke-static {v2, v4, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$700(Lcom/android/systemui/statusbar/policy/MobileSignalController;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 225
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    return-void
.end method
