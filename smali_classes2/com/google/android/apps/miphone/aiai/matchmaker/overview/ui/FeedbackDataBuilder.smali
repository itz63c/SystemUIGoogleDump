.class public Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/FeedbackDataBuilder;
.super Ljava/lang/Object;
.source "FeedbackDataBuilder.java"


# instance fields
.field feedbackBatch:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;

.field final feedbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$Feedback;",
            ">;"
        }
    .end annotation
.end field

.field final overviewSessionId:Ljava/lang/String;

.field final screenSessionId:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overviewSessionId"
        }
    .end annotation

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/FeedbackDataBuilder;->feedbacks:Ljava/util/List;

    .line 797
    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/FeedbackDataBuilder;->overviewSessionId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 798
    iput p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/FeedbackDataBuilder;->screenSessionId:I

    return-void
.end method

.method private addFeedback()Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$Feedback;
    .locals 1

    .line 784
    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$Feedback;->create()Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$Feedback;

    move-result-object v0

    .line 785
    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/FeedbackDataBuilder;->feedbacks:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static newBuilder(Ljava/lang/String;)Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/FeedbackDataBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overviewSessionId"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/FeedbackDataBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/FeedbackDataBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method addScreenshotActionFeedback(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/FeedbackDataBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "actionType",
            "isSmartAction"
        }
    .end annotation

    .line 270
    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotActionFeedback;->create()Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotActionFeedback;

    move-result-object v0

    .line 271
    invoke-virtual {v0, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotActionFeedback;->setActionType(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0, p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotActionFeedback;->setIsSmartActions(Z)V

    .line 274
    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotFeedback;->create()Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotFeedback;

    move-result-object p2

    .line 275
    invoke-virtual {p2, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotFeedback;->setScreenshotId(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotFeedback;->setScreenshotFeedback(Ljava/lang/Object;)V

    .line 278
    invoke-direct {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/FeedbackDataBuilder;->addFeedback()Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$Feedback;

    move-result-object p1

    .line 279
    invoke-virtual {p1, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$Feedback;->setFeedback(Ljava/lang/Object;)V

    return-object p0
.end method

.method addScreenshotOpFeedback(Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;J)Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/FeedbackDataBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "op",
            "status",
            "durationMs"
        }
    .end annotation

    .line 285
    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpFeedback;->create()Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpFeedback;

    move-result-object v0

    .line 286
    invoke-virtual {v0, p4, p5}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpFeedback;->setDurationMs(J)V

    .line 287
    invoke-virtual {v0, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpFeedback;->setOp(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;)V

    .line 288
    invoke-virtual {v0, p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpFeedback;->setStatus(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;)V

    .line 290
    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotFeedback;->create()Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotFeedback;

    move-result-object p2

    .line 291
    invoke-virtual {p2, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotFeedback;->setScreenshotId(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotFeedback;->setScreenshotFeedback(Ljava/lang/Object;)V

    .line 294
    invoke-direct {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/FeedbackDataBuilder;->addFeedback()Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$Feedback;

    move-result-object p1

    .line 295
    invoke-virtual {p1, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$Feedback;->setFeedback(Ljava/lang/Object;)V

    return-object p0
.end method

.method public build()Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;
    .locals 3

    .line 49
    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;->create()Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;

    move-result-object v0

    .line 50
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/FeedbackDataBuilder;->screenSessionId:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;->setScreenSessionId(J)V

    .line 51
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/FeedbackDataBuilder;->overviewSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;->setOverviewSessionId(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/FeedbackDataBuilder;->feedbacks:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;->setFeedback(Ljava/util/List;)V

    .line 53
    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/FeedbackDataBuilder;->feedbackBatch:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;

    return-object v0
.end method
