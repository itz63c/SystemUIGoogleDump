.class Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DockObserver.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DreamlinerBroadcastReceiver"
.end annotation


# instance fields
.field private mListening:Z

.field final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;)V
    .locals 0

    .line 960
    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getFanInformation(Landroid/content/Intent;)V
    .locals 3

    .line 1048
    invoke-static {}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$400()Z

    move-result v0

    const-string v1, "fan_id"

    if-eqz v0, :cond_0

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "command=0, i="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x1

    .line 1050
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DLObserver"

    .line 1049
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "android.intent.extra.RESULT_RECEIVER"

    .line 1052
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    .line 1054
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result p1

    if-eqz v0, :cond_1

    .line 1056
    new-instance v1, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;BLandroid/os/ResultReceiver;)V

    invoke-static {v1}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$800(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 1082
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_GET_DOCK_INFO"

    .line 1083
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_DOCK_UI_IDLE"

    .line 1084
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_DOCK_UI_ACTIVE"

    .line 1085
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_KEY_EXCHANGE"

    .line 1086
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_CHALLENGE"

    .line 1087
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.dream"

    .line 1088
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.paired"

    .line 1089
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.pause"

    .line 1090
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.resume"

    .line 1091
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.undock"

    .line 1092
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.assistant_poodle"

    .line 1093
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.photo"

    .line 1094
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.photo_error"

    .line 1095
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_GET_FAN_INFO"

    .line 1096
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_SET_FAN"

    .line 1097
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method private setFan(Landroid/content/Intent;)V
    .locals 7

    .line 1061
    invoke-static {}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$400()Z

    move-result v0

    const-string v1, "DLObserver"

    const-string v2, "fan_rpm"

    const-string v3, "fan_mode"

    const-string v4, "fan_id"

    const/4 v5, -0x1

    if-eqz v0, :cond_0

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "command=1, i="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", m="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", r="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1062
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 1068
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v4

    .line 1069
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v0

    .line 1070
    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-ne p1, v5, :cond_1

    const-string p0, "Failed to get r."

    .line 1072
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1075
    :cond_1
    new-instance v1, Lcom/google/android/systemui/dreamliner/DockObserver$SetFan;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {v1, p0, v4, v0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$SetFan;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;BBI)V

    invoke-static {v1}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$800(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 968
    :cond_0
    invoke-static {}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dock Receiver.onReceive(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "com.google.android.systemui.dreamliner.ACTION_GET_FAN_INFO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "com.google.android.systemui.dreamliner.ACTION_DOCK_UI_ACTIVE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "com.google.android.systemui.dreamliner.assistant_poodle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "com.google.android.systemui.dreamliner.photo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "com.google.android.systemui.dreamliner.pause"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "com.google.android.systemui.dreamliner.dream"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "com.google.android.systemui.dreamliner.undock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "com.google.android.systemui.dreamliner.resume"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string v2, "com.google.android.systemui.dreamliner.paired"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_9
    const-string v2, "com.google.android.systemui.dreamliner.ACTION_CHALLENGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_a
    const-string v2, "com.google.android.systemui.dreamliner.ACTION_DOCK_UI_IDLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_b
    const-string v2, "com.google.android.systemui.dreamliner.photo_error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_c
    const-string v2, "com.google.android.systemui.dreamliner.ACTION_KEY_EXCHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    move v1, v3

    goto :goto_0

    :sswitch_d
    const-string v2, "com.google.android.systemui.dreamliner.ACTION_GET_DOCK_INFO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    move v1, v4

    goto :goto_0

    :sswitch_e
    const-string v2, "com.google.android.systemui.dreamliner.ACTION_SET_FAN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    move v1, v5

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 1037
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->getFanInformation(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 983
    :pswitch_1
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$200(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V

    .line 984
    invoke-static {v5}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$302(Z)Z

    goto/16 :goto_1

    .line 1024
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1500(Lcom/google/android/systemui/dreamliner/DockObserver;)Lcom/google/android/systemui/dreamliner/DockIndicationController;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 1025
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1500(Lcom/google/android/systemui/dreamliner/DockObserver;)Lcom/google/android/systemui/dreamliner/DockIndicationController;

    move-result-object p0

    const-string p1, "showing"

    .line 1026
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->setShowing(Z)V

    goto/16 :goto_1

    .line 1030
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p1, p2}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1600(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Intent;)V

    .line 1031
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1700(Lcom/google/android/systemui/dreamliner/DockObserver;)V

    goto/16 :goto_1

    .line 1010
    :pswitch_4
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p1, v3}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1400(Lcom/google/android/systemui/dreamliner/DockObserver;I)V

    .line 1011
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p2, p1, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    const-class v0, Lcom/google/android/systemui/dreamliner/DockGestureController;

    .line 1012
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1011
    invoke-static {p1, p2, v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1300(Lcom/google/android/systemui/dreamliner/DockObserver;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1013
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->stopMonitoring()V

    goto/16 :goto_1

    .line 993
    :pswitch_5
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1200(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1017
    :pswitch_6
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p1, v5}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1400(Lcom/google/android/systemui/dreamliner/DockObserver;I)V

    .line 1018
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p2, p1, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    const-class v0, Lcom/google/android/systemui/dreamliner/DockGestureController;

    .line 1019
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1018
    invoke-static {p1, p2, v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1300(Lcom/google/android/systemui/dreamliner/DockObserver;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1020
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->stopMonitoring()V

    goto/16 :goto_1

    .line 996
    :pswitch_7
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, p1, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    const-class v1, Lcom/google/android/systemui/dreamliner/DockGestureController;

    .line 997
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 996
    invoke-static {p1, v0, v1}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1300(Lcom/google/android/systemui/dreamliner/DockObserver;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 998
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p1, p1, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    const-string v0, "single_tap_action"

    .line 999
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    .line 998
    invoke-virtual {p1, p2}, Lcom/google/android/systemui/dreamliner/DockGestureController;->setTapAction(Landroid/app/PendingIntent;)V

    .line 1003
    :cond_11
    :pswitch_8
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p1, v4}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1400(Lcom/google/android/systemui/dreamliner/DockObserver;I)V

    .line 1004
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p2, p1, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    const-class v0, Lcom/google/android/systemui/dreamliner/DockGestureController;

    .line 1005
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1004
    invoke-static {p1, p2, v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1300(Lcom/google/android/systemui/dreamliner/DockObserver;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1006
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->startMonitoring()V

    goto :goto_1

    .line 990
    :pswitch_9
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p0, p2}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1100(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Intent;)V

    goto :goto_1

    .line 979
    :pswitch_a
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$900(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V

    .line 980
    invoke-static {v4}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$302(Z)Z

    goto :goto_1

    .line 1034
    :pswitch_b
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1800(Lcom/google/android/systemui/dreamliner/DockObserver;)V

    goto :goto_1

    .line 987
    :pswitch_c
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p0, p2}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1000(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_d
    const-string v0, "android.intent.extra.RESULT_RECEIVER"

    .line 972
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/ResultReceiver;

    if-eqz p2, :cond_12

    .line 975
    new-instance v0, Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$800(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1040
    :pswitch_e
    invoke-direct {p0, p2}, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->setFan(Landroid/content/Intent;)V

    :cond_12
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x61077fc4 -> :sswitch_e
        -0x605a5449 -> :sswitch_d
        -0x5f4582e3 -> :sswitch_c
        -0x5e6c3fb4 -> :sswitch_b
        -0x5e29e673 -> :sswitch_a
        -0x56f61a77 -> :sswitch_9
        -0x20873038 -> :sswitch_8
        -0x1ce08904 -> :sswitch_7
        -0x174a14e5 -> :sswitch_6
        0x279c4354 -> :sswitch_5
        0x283de147 -> :sswitch_4
        0x2840f983 -> :sswitch_3
        0x2ac2dd1d -> :sswitch_2
        0x7704ca7f -> :sswitch_1
        0x77c39a5d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerReceiver(Landroid/content/Context;)V
    .locals 7

    .line 1102
    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->mListening:Z

    if-nez v0, :cond_0

    .line 1103
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    const/4 v6, 0x0

    const-string v5, "com.google.android.systemui.permission.WIRELESS_CHARGER_STATUS"

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 1105
    iput-boolean p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->mListening:Z

    :cond_0
    return-void
.end method

.method public unregisterReceiver(Landroid/content/Context;)V
    .locals 1

    .line 1110
    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->mListening:Z

    if-eqz v0, :cond_0

    .line 1111
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 1112
    iput-boolean p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->mListening:Z

    :cond_0
    return-void
.end method
