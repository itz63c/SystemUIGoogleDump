.class Lcom/google/android/systemui/smartspace/IcuDateTextView$1;
.super Landroid/content/BroadcastReceiver;
.source "IcuDateTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/smartspace/IcuDateTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/smartspace/IcuDateTextView;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$1;->this$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIME_TICK"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 33
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$1;->this$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    invoke-static {p0, p1}, Lcom/google/android/systemui/smartspace/IcuDateTextView;->access$000(Lcom/google/android/systemui/smartspace/IcuDateTextView;Z)V

    return-void
.end method
