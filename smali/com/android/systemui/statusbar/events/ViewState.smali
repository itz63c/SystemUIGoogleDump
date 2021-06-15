.class final Lcom/android/systemui/statusbar/events/ViewState;
.super Ljava/lang/Object;
.source "PrivacyDotViewController.kt"


# instance fields
.field private final cornerIndex:I

.field private final designatedCorner:Landroid/view/View;

.field private final height:I

.field private final marginLeft:I

.field private final marginRight:I

.field private final qsExpanded:Z

.field private final rotation:I

.field private final shadeExpanded:Z

.field private final systemPrivacyEventIsActive:Z


# direct methods
.method public constructor <init>()V
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/statusbar/events/ViewState;-><init>(ZZZIIIIILandroid/view/View;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZIIIIILandroid/view/View;)V
    .locals 0

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/events/ViewState;->systemPrivacyEventIsActive:Z

    .line 489
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/events/ViewState;->shadeExpanded:Z

    .line 490
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/events/ViewState;->qsExpanded:Z

    .line 492
    iput p4, p0, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    .line 493
    iput p5, p0, Lcom/android/systemui/statusbar/events/ViewState;->height:I

    .line 494
    iput p6, p0, Lcom/android/systemui/statusbar/events/ViewState;->marginLeft:I

    .line 495
    iput p7, p0, Lcom/android/systemui/statusbar/events/ViewState;->marginRight:I

    .line 496
    iput p8, p0, Lcom/android/systemui/statusbar/events/ViewState;->cornerIndex:I

    .line 497
    iput-object p9, p0, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    return-void
.end method

.method public synthetic constructor <init>(ZZZIIIIILandroid/view/View;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x1

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    move p6, v0

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    move p7, v0

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    const/4 p8, -0x1

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    const/4 p9, 0x0

    .line 487
    :cond_8
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/statusbar/events/ViewState;-><init>(ZZZIIIIILandroid/view/View;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZIIIIILandroid/view/View;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/events/ViewState;->systemPrivacyEventIsActive:Z

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/events/ViewState;->shadeExpanded:Z

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/events/ViewState;->qsExpanded:Z

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/android/systemui/statusbar/events/ViewState;->height:I

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/android/systemui/statusbar/events/ViewState;->marginLeft:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/android/systemui/statusbar/events/ViewState;->marginRight:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/android/systemui/statusbar/events/ViewState;->cornerIndex:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move p1, v2

    move p2, v3

    move p3, v4

    move p4, v5

    move p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/android/systemui/statusbar/events/ViewState;->copy(ZZZIIIIILandroid/view/View;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(ZZZIIIIILandroid/view/View;)Lcom/android/systemui/statusbar/events/ViewState;
    .locals 11

    new-instance v10, Lcom/android/systemui/statusbar/events/ViewState;

    move-object v0, v10

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/events/ViewState;-><init>(ZZZIIIIILandroid/view/View;)V

    return-object v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/events/ViewState;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->systemPrivacyEventIsActive:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->systemPrivacyEventIsActive:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->shadeExpanded:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->shadeExpanded:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->qsExpanded:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->qsExpanded:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    iget v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->height:I

    iget v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->height:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->marginLeft:I

    iget v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->marginLeft:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->marginRight:I

    iget v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->marginRight:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->cornerIndex:I

    iget v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->cornerIndex:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    iget-object p1, p1, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getDesignatedCorner()Landroid/view/View;
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    return-object p0
.end method

.method public final getHeight()I
    .locals 0

    .line 493
    iget p0, p0, Lcom/android/systemui/statusbar/events/ViewState;->height:I

    return p0
.end method

.method public final getMarginLeft()I
    .locals 0

    .line 494
    iget p0, p0, Lcom/android/systemui/statusbar/events/ViewState;->marginLeft:I

    return p0
.end method

.method public final getMarginRight()I
    .locals 0

    .line 495
    iget p0, p0, Lcom/android/systemui/statusbar/events/ViewState;->marginRight:I

    return p0
.end method

.method public final getRotation()I
    .locals 0

    .line 492
    iget p0, p0, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/events/ViewState;->systemPrivacyEventIsActive:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/events/ViewState;->shadeExpanded:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/events/ViewState;->qsExpanded:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->marginLeft:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->marginRight:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->cornerIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    if-nez p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->hashCode()I

    move-result p0

    :goto_1
    add-int/2addr v0, p0

    return v0
.end method

.method public final needsLayout(Lcom/android/systemui/statusbar/events/ViewState;)Z
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    iget v0, p0, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    iget v1, p1, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    if-ne v0, v1, :cond_1

    .line 505
    iget v0, p0, Lcom/android/systemui/statusbar/events/ViewState;->marginRight:I

    iget v1, p1, Lcom/android/systemui/statusbar/events/ViewState;->marginRight:I

    if-ne v0, v1, :cond_1

    .line 506
    iget p0, p0, Lcom/android/systemui/statusbar/events/ViewState;->height:I

    iget p1, p1, Lcom/android/systemui/statusbar/events/ViewState;->height:I

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final shouldShowDot()Z
    .locals 1

    .line 500
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/events/ViewState;->systemPrivacyEventIsActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/events/ViewState;->shadeExpanded:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/events/ViewState;->qsExpanded:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewState(systemPrivacyEventIsActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->systemPrivacyEventIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shadeExpanded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->shadeExpanded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", qsExpanded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->qsExpanded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", marginLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->marginLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", marginRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->marginRight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cornerIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/events/ViewState;->cornerIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", designatedCorner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
