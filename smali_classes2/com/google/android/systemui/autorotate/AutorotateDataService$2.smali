.class Lcom/google/android/systemui/autorotate/AutorotateDataService$2;
.super Landroid/content/BroadcastReceiver;
.source "AutorotateDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/autorotate/AutorotateDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/autorotate/AutorotateDataService;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$2;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 195
    iget-object p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$2;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {p0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$500(Lcom/google/android/systemui/autorotate/AutorotateDataService;)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 197
    iget-object p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$2;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {p0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$600(Lcom/google/android/systemui/autorotate/AutorotateDataService;)V

    :cond_1
    :goto_0
    return-void
.end method
