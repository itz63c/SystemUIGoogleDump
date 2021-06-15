.class public Lcom/android/systemui/animation/ActivityLaunchAnimator$State;
.super Ljava/lang/Object;
.source "ActivityLaunchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/ActivityLaunchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field private backgroundAlpha:F

.field private bottom:I

.field private bottomCornerRadius:F

.field private contentAlpha:F

.field private left:I

.field private right:I

.field private final startBottom:I

.field private final startCenterX:F

.field private final startCenterY:F

.field private final startHeight:I

.field private final startLeft:I

.field private final startRight:I

.field private final startTop:I

.field private final startWidth:I

.field private top:I

.field private topCornerRadius:F


# direct methods
.method public constructor <init>(IIIIFFFF)V
    .locals 0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->top:I

    .line 228
    iput p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->bottom:I

    .line 229
    iput p3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->left:I

    .line 230
    iput p4, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->right:I

    .line 232
    iput p5, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->topCornerRadius:F

    .line 233
    iput p6, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->bottomCornerRadius:F

    .line 235
    iput p7, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->contentAlpha:F

    .line 236
    iput p8, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->backgroundAlpha:F

    .line 238
    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startTop:I

    .line 239
    iput p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startBottom:I

    .line 240
    iput p3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startLeft:I

    .line 241
    iput p4, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startRight:I

    .line 242
    invoke-virtual {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startWidth:I

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startHeight:I

    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getCenterX()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startCenterX:F

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getCenterY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startCenterY:F

    return-void
.end method

.method public synthetic constructor <init>(IIIIFFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    move v9, v2

    goto :goto_1

    :cond_1
    move/from16 v9, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    move v10, v2

    goto :goto_2

    :cond_2
    move/from16 v10, p7

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    move v11, v2

    goto :goto_3

    :cond_3
    move/from16 v11, p8

    :goto_3
    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    .line 225
    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;-><init>(IIIIFFFF)V

    return-void
.end method


# virtual methods
.method public final getBackgroundAlpha()F
    .locals 0

    .line 236
    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->backgroundAlpha:F

    return p0
.end method

.method public final getBottom()I
    .locals 0

    .line 228
    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->bottom:I

    return p0
.end method

.method public getBottomChange()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->bottom:I

    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startBottom:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getBottomCornerRadius()F
    .locals 0

    .line 233
    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->bottomCornerRadius:F

    return p0
.end method

.method public final getCenterX()F
    .locals 2

    .line 272
    iget v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public final getCenterY()F
    .locals 2

    .line 275
    iget v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public final getContentAlpha()F
    .locals 0

    .line 235
    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->contentAlpha:F

    return p0
.end method

.method public final getHeight()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->bottom:I

    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->top:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getHeightRatio()F
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startHeight:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public final getLeft()I
    .locals 0

    .line 229
    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->left:I

    return p0
.end method

.method public final getLeftChange()I
    .locals 1

    .line 260
    iget v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->left:I

    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startLeft:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getRight()I
    .locals 0

    .line 230
    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->right:I

    return p0
.end method

.method public final getRightChange()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->right:I

    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startRight:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getStartCenterX()F
    .locals 0

    .line 244
    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startCenterX:F

    return p0
.end method

.method public final getStartCenterY()F
    .locals 0

    .line 245
    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startCenterY:F

    return p0
.end method

.method public final getTop()I
    .locals 0

    .line 227
    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->top:I

    return p0
.end method

.method public getTopChange()I
    .locals 1

    .line 254
    iget v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->top:I

    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startTop:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getTopCornerRadius()F
    .locals 0

    .line 232
    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->topCornerRadius:F

    return p0
.end method

.method public final getWidth()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->right:I

    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->left:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getWidthRatio()F
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startWidth:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public final setBackgroundAlpha(F)V
    .locals 0

    .line 236
    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->backgroundAlpha:F

    return-void
.end method

.method public final setBottom(I)V
    .locals 0

    .line 228
    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->bottom:I

    return-void
.end method

.method public final setBottomCornerRadius(F)V
    .locals 0

    .line 233
    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->bottomCornerRadius:F

    return-void
.end method

.method public final setContentAlpha(F)V
    .locals 0

    .line 235
    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->contentAlpha:F

    return-void
.end method

.method public final setLeft(I)V
    .locals 0

    .line 229
    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->left:I

    return-void
.end method

.method public final setRight(I)V
    .locals 0

    .line 230
    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->right:I

    return-void
.end method

.method public final setTop(I)V
    .locals 0

    .line 227
    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->top:I

    return-void
.end method

.method public final setTopCornerRadius(F)V
    .locals 0

    .line 232
    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->topCornerRadius:F

    return-void
.end method
