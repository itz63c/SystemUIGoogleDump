.class Lcom/android/systemui/classifier/BrightLineFalsingManager$2;
.super Ljava/lang/Object;
.source "BrightLineFalsingManager.java"

# interfaces
.implements Lcom/android/systemui/classifier/FalsingDataProvider$GestureCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/BrightLineFalsingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;


# direct methods
.method public static synthetic $r8$lambda$Z7eof5ii-b9Bmtjz28vhAk2F8xg(Lcom/android/systemui/classifier/BrightLineFalsingManager$2;Ljava/util/Collection;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;->lambda$onGestureComplete$0(Ljava/util/Collection;J)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/classifier/BrightLineFalsingManager;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;->this$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onGestureComplete$0(Ljava/util/Collection;J)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;->this$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->access$302(Lcom/android/systemui/classifier/BrightLineFalsingManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 107
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;->this$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->access$600(Lcom/android/systemui/classifier/BrightLineFalsingManager;)Lcom/android/systemui/classifier/HistoryTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/classifier/HistoryTracker;->addResults(Ljava/util/Collection;J)V

    return-void
.end method


# virtual methods
.method public onGestureComplete(J)V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;->this$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    invoke-static {v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->access$100(Lcom/android/systemui/classifier/BrightLineFalsingManager;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;->this$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    invoke-static {v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->access$200(Lcom/android/systemui/classifier/BrightLineFalsingManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;->this$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    invoke-static {v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->access$100(Lcom/android/systemui/classifier/BrightLineFalsingManager;)Ljava/util/Collection;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;->this$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    invoke-static {v1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->access$500(Lcom/android/systemui/classifier/BrightLineFalsingManager;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/classifier/BrightLineFalsingManager$2-$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/android/systemui/classifier/BrightLineFalsingManager$2-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/classifier/BrightLineFalsingManager$2;Ljava/util/Collection;J)V

    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;->this$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    .line 109
    invoke-static {p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->access$400(Lcom/android/systemui/classifier/BrightLineFalsingManager;)J

    move-result-wide p1

    .line 104
    invoke-interface {v2, v3, p1, p2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->access$302(Lcom/android/systemui/classifier/BrightLineFalsingManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 110
    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;->this$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->access$202(Lcom/android/systemui/classifier/BrightLineFalsingManager;Z)Z

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;->this$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    invoke-static {v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->access$600(Lcom/android/systemui/classifier/BrightLineFalsingManager;)Lcom/android/systemui/classifier/HistoryTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;->this$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    invoke-static {v1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->access$100(Lcom/android/systemui/classifier/BrightLineFalsingManager;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/systemui/classifier/HistoryTracker;->addResults(Ljava/util/Collection;J)V

    .line 114
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;->this$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->access$102(Lcom/android/systemui/classifier/BrightLineFalsingManager;Ljava/util/Collection;)Ljava/util/Collection;

    goto :goto_1

    .line 117
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;->this$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->access$600(Lcom/android/systemui/classifier/BrightLineFalsingManager;)Lcom/android/systemui/classifier/HistoryTracker;

    move-result-object p0

    const-wide v0, 0x3fe999999999999aL    # 0.8

    const-string v2, "unclassified"

    .line 119
    invoke-static {v0, v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->falsed(DLjava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object v0

    .line 118
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 117
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/classifier/HistoryTracker;->addResults(Ljava/util/Collection;J)V

    :goto_1
    return-void
.end method
