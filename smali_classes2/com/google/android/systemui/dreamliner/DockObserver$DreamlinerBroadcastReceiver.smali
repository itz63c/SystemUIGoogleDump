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

    .line 836
    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 920
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_GET_DOCK_INFO"

    .line 921
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_DOCK_UI_IDLE"

    .line 922
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_DOCK_UI_ACTIVE"

    .line 923
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_KEY_EXCHANGE"

    .line 924
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_CHALLENGE"

    .line 925
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.dream"

    .line 926
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.paired"

    .line 927
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.pause"

    .line 928
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.resume"

    .line 929
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.undock"

    .line 930
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.assistant_poodle"

    .line 931
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.photo"

    .line 932
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.photo_error"

    .line 933
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 844
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

    .line 846
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
    const-string v2, "com.google.android.systemui.dreamliner.ACTION_DOCK_UI_ACTIVE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "com.google.android.systemui.dreamliner.assistant_poodle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "com.google.android.systemui.dreamliner.photo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "com.google.android.systemui.dreamliner.pause"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "com.google.android.systemui.dreamliner.dream"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "com.google.android.systemui.dreamliner.undock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_6
    const-string v2, "com.google.android.systemui.dreamliner.resume"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "com.google.android.systemui.dreamliner.paired"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_8
    const-string v2, "com.google.android.systemui.dreamliner.ACTION_CHALLENGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_9
    const-string v2, "com.google.android.systemui.dreamliner.ACTION_DOCK_UI_IDLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_a
    const-string v2, "com.google.android.systemui.dreamliner.photo_error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    move v1, v3

    goto :goto_0

    :sswitch_b
    const-string v2, "com.google.android.systemui.dreamliner.ACTION_KEY_EXCHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    move v1, v4

    goto :goto_0

    :sswitch_c
    const-string v2, "com.google.android.systemui.dreamliner.ACTION_GET_DOCK_INFO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    move v1, v5

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 859
    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$200(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V

    .line 860
    invoke-static {v5}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$302(Z)Z

    goto/16 :goto_1

    .line 900
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1500(Lcom/google/android/systemui/dreamliner/DockObserver;)Lcom/google/android/systemui/dreamliner/DockIndicationController;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 901
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1500(Lcom/google/android/systemui/dreamliner/DockObserver;)Lcom/google/android/systemui/dreamliner/DockIndicationController;

    move-result-object p0

    const-string p1, "showing"

    .line 902
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->setShowing(Z)V

    goto/16 :goto_1

    .line 906
    :pswitch_2
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p0, p2}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1600(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 886
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p1, v3}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1400(Lcom/google/android/systemui/dreamliner/DockObserver;I)V

    .line 887
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p2, p1, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    const-class v0, Lcom/google/android/systemui/dreamliner/DockGestureController;

    .line 888
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 887
    invoke-static {p1, p2, v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1300(Lcom/google/android/systemui/dreamliner/DockObserver;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 889
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->stopMonitoring()V

    goto/16 :goto_1

    .line 869
    :pswitch_4
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1200(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 893
    :pswitch_5
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p1, v5}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1400(Lcom/google/android/systemui/dreamliner/DockObserver;I)V

    .line 894
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p2, p1, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    const-class v0, Lcom/google/android/systemui/dreamliner/DockGestureController;

    .line 895
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 894
    invoke-static {p1, p2, v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1300(Lcom/google/android/systemui/dreamliner/DockObserver;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 896
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->stopMonitoring()V

    goto :goto_1

    .line 872
    :pswitch_6
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, p1, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    const-class v1, Lcom/google/android/systemui/dreamliner/DockGestureController;

    .line 873
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 872
    invoke-static {p1, v0, v1}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1300(Lcom/google/android/systemui/dreamliner/DockObserver;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 874
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p1, p1, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    const-string v0, "single_tap_action"

    .line 875
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    .line 874
    invoke-virtual {p1, p2}, Lcom/google/android/systemui/dreamliner/DockGestureController;->setTapAction(Landroid/app/PendingIntent;)V

    .line 879
    :cond_f
    :pswitch_7
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p1, v4}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1400(Lcom/google/android/systemui/dreamliner/DockObserver;I)V

    .line 880
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p2, p1, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    const-class v0, Lcom/google/android/systemui/dreamliner/DockGestureController;

    .line 881
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 880
    invoke-static {p1, p2, v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1300(Lcom/google/android/systemui/dreamliner/DockObserver;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 882
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->startMonitoring()V

    goto :goto_1

    .line 866
    :pswitch_8
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p0, p2}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1100(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Intent;)V

    goto :goto_1

    .line 855
    :pswitch_9
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$900(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V

    .line 856
    invoke-static {v4}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$302(Z)Z

    goto :goto_1

    .line 909
    :pswitch_a
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1700(Lcom/google/android/systemui/dreamliner/DockObserver;)V

    goto :goto_1

    .line 863
    :pswitch_b
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p0, p2}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$1000(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_c
    const-string v0, "android.intent.extra.RESULT_RECEIVER"

    .line 848
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/ResultReceiver;

    if-eqz p2, :cond_10

    .line 851
    new-instance v0, Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$800(Ljava/lang/Runnable;)V

    :cond_10
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x605a5449 -> :sswitch_c
        -0x5f4582e3 -> :sswitch_b
        -0x5e6c3fb4 -> :sswitch_a
        -0x5e29e673 -> :sswitch_9
        -0x56f61a77 -> :sswitch_8
        -0x20873038 -> :sswitch_7
        -0x1ce08904 -> :sswitch_6
        -0x174a14e5 -> :sswitch_5
        0x279c4354 -> :sswitch_4
        0x283de147 -> :sswitch_3
        0x2840f983 -> :sswitch_2
        0x2ac2dd1d -> :sswitch_1
        0x7704ca7f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_7
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

    .line 938
    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->mListening:Z

    if-nez v0, :cond_0

    .line 939
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    const/4 v6, 0x0

    const-string v5, "com.google.android.systemui.permission.WIRELESS_CHARGER_STATUS"

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 941
    iput-boolean p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->mListening:Z

    :cond_0
    return-void
.end method

.method public unregisterReceiver(Landroid/content/Context;)V
    .locals 1

    .line 946
    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->mListening:Z

    if-eqz v0, :cond_0

    .line 947
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 948
    iput-boolean p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->mListening:Z

    :cond_0
    return-void
.end method
