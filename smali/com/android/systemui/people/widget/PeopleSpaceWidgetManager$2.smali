.class Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;
.super Landroid/content/BroadcastReceiver;
.source "PeopleSpaceWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;


# direct methods
.method public static synthetic $r8$lambda$WaZaxmCed6PABQ0k9EtPVUlaDxI(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;->lambda$onReceive$0(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V
    .locals 0

    .line 999
    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Ljava/lang/String;)V
    .locals 0

    .line 1005
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateWidgetsOnStateChange(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1003
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1004
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Update widgets from: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PeopleSpaceWidgetMgr"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-static {p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->access$200(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
