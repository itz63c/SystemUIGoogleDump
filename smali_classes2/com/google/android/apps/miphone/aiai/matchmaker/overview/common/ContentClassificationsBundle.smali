.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;
.super Ljava/lang/Object;
.source "ContentClassificationsBundle.java"


# instance fields
.field public final activityName:Ljava/lang/String;

.field public final assistBundle:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final bundleVersion:I

.field public final captureTimestampMs:J

.field public final contents:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ContentParcelables$Contents;

.field public final interactionContext:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final packageName:Ljava/lang/String;

.field public final taskId:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLandroid/os/Bundle;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ContentParcelables$Contents;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;I)V
    .locals 0
    .param p6    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "activityName",
            "taskId",
            "captureTimestampMs",
            "assistBundle",
            "contents",
            "interactionContext",
            "bundleVersion"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;->packageName:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;->activityName:Ljava/lang/String;

    .line 90
    iput p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;->taskId:I

    .line 91
    iput-wide p4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;->captureTimestampMs:J

    .line 92
    iput-object p6, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;->assistBundle:Landroid/os/Bundle;

    .line 93
    iput-object p7, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;->contents:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ContentParcelables$Contents;

    .line 94
    iput-object p8, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;->interactionContext:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;

    .line 95
    iput p9, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;->bundleVersion:I

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;IJLandroid/os/Bundle;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ContentParcelables$Contents;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;I)Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;
    .locals 11
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "activityName",
            "taskId",
            "captureTimestampMs",
            "assistBundle",
            "contents",
            "interactionContext",
            "bundleVersion"
        }
    .end annotation

    .line 46
    new-instance v10, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;-><init>(Ljava/lang/String;Ljava/lang/String;IJLandroid/os/Bundle;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ContentParcelables$Contents;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;I)V

    return-object v10
.end method


# virtual methods
.method public createBundle()Landroid/os/Bundle;
    .locals 4

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;->packageName:Ljava/lang/String;

    const-string v2, "PackageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;->activityName:Ljava/lang/String;

    const-string v2, "ActivityName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;->taskId:I

    const-string v2, "TaskId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    iget-wide v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;->captureTimestampMs:J

    const-string v3, "CaptureTimestampMs"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 63
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;->assistBundle:Landroid/os/Bundle;

    const-string v2, "AssistBundle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 64
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;->contents:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ContentParcelables$Contents;

    const/4 v2, 0x0

    const-string v3, "Contents"

    if-nez v1, :cond_0

    .line 65
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ContentParcelables$Contents;->writeToBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;->interactionContext:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;

    const-string v3, "InteractionContext"

    if-nez v1, :cond_1

    .line 70
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;->writeToBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 74
    :goto_1
    iget p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/ContentClassificationsBundle;->bundleVersion:I

    const-string v1, "Version"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p0, 0x3

    const-string v1, "BundleTypedVersion"

    .line 75
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
