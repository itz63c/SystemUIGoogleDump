.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;

.field private final arg$2:Ljava/util/function/Supplier;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestListener;

.field private final arg$5:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;Ljava/util/function/Supplier;Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestListener;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$$Lambda$3;->arg$1:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$$Lambda$3;->arg$2:Ljava/util/function/Supplier;

    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$$Lambda$3;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$$Lambda$3;->arg$4:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestListener;

    iput-object p5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$$Lambda$3;->arg$5:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$$Lambda$3;->arg$1:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$$Lambda$3;->arg$2:Ljava/util/function/Supplier;

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$$Lambda$3;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$$Lambda$3;->arg$4:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestListener;

    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$$Lambda$3;->arg$5:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;->lambda$notifyInteractionAsync$2$ContentSuggestionsServiceWrapperImpl(Ljava/util/function/Supplier;Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestListener;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;)V

    return-void
.end method
