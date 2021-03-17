.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final arg$1:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;

.field private final arg$4:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;

.field private final arg$5:J


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$Lambda$1;->arg$1:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$Lambda$1;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$Lambda$1;->arg$3:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;

    iput-object p4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$Lambda$1;->arg$4:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;

    iput-wide p5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$Lambda$1;->arg$5:J

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$Lambda$1;->arg$1:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$Lambda$1;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$Lambda$1;->arg$3:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$Lambda$1;->arg$4:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;

    iget-wide v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$Lambda$1;->arg$5:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;->lambda$notifyOp$1$ContentSuggestionsServiceClient(Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;J)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
