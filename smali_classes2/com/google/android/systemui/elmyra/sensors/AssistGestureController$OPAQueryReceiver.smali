.class Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$OPAQueryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AssistGestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OPAQueryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;


# direct methods
.method private constructor <init>(Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$OPAQueryReceiver;->this$0:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$1;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$OPAQueryReceiver;-><init>(Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.google.android.systemui.OPA_ELMYRA_QUERY_SUBMITTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$OPAQueryReceiver;->this$0:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    invoke-static {p1}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->access$000(Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;)Lcom/google/android/systemui/elmyra/SnapshotLogger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/systemui/elmyra/SnapshotLogger;->didReceiveQuery()V

    .line 82
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$OPAQueryReceiver;->this$0:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    invoke-static {p0}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->access$100(Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;)Lcom/google/android/systemui/elmyra/WestworldLogger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/WestworldLogger;->querySubmitted()V

    :cond_0
    return-void
.end method
