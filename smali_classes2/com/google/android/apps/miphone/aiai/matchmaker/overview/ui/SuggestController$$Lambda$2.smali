.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final arg$1:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;

.field private final arg$2:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$2;->arg$1:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$2;->arg$2:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$2;->arg$1:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;

    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$2;->arg$2:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;->lambda$reportMetricsToService$1$SuggestController(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
