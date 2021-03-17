.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/telephony/SubscriptionManager;Lcom/android/settingslib/mobile/MobileMappings$Config;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/settingslib/net/DataUsageController;Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/demomode/DemoModeController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public onActiveDataSubscriptionIdChanged(I)V
    .locals 4

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->keepCellularValidationBitInSwitch(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkController"

    const-string v1, ": mForceCellularValidated to true."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1502(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1402(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 377
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->doUpdateMobileControllers()V

    return-void
.end method
