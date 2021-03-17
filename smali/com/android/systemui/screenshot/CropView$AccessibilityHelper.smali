.class Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/CropView;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/CropView;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    .line 248
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private setNodePositions(FLandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {v0, p1}, Lcom/android/systemui/screenshot/CropView;->access$200(Lcom/android/systemui/screenshot/CropView;F)I

    move-result p1

    .line 313
    new-instance v0, Landroid/graphics/Rect;

    int-to-float p1, p1

    iget-object v1, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {v1}, Lcom/android/systemui/screenshot/CropView;->access$300(Lcom/android/systemui/screenshot/CropView;)F

    move-result v1

    sub-float v1, p1, v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    .line 314
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {v3}, Lcom/android/systemui/screenshot/CropView;->access$300(Lcom/android/systemui/screenshot/CropView;)F

    move-result v3

    add-float/2addr p1, v3

    float-to-int p1, p1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 315
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 317
    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 318
    aget p0, p1, v3

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 319
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 1

    .line 253
    iget-object p1, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {p1}, Lcom/android/systemui/screenshot/CropView;->access$100(Lcom/android/systemui/screenshot/CropView;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/screenshot/CropView;->access$200(Lcom/android/systemui/screenshot/CropView;F)I

    move-result p1

    int-to-float p1, p1

    sub-float p1, p2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {v0}, Lcom/android/systemui/screenshot/CropView;->access$300(Lcom/android/systemui/screenshot/CropView;)F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {p1}, Lcom/android/systemui/screenshot/CropView;->access$400(Lcom/android/systemui/screenshot/CropView;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/screenshot/CropView;->access$200(Lcom/android/systemui/screenshot/CropView;F)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {p0}, Lcom/android/systemui/screenshot/CropView;->access$300(Lcom/android/systemui/screenshot/CropView;)F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 p0, -0x80000000

    return p0
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 0

    const/4 p0, 0x1

    .line 264
    invoke-virtual {p1, p0}, Landroid/util/IntArray;->add(I)V

    const/4 p0, 0x2

    .line 265
    invoke-virtual {p1, p0}, Landroid/util/IntArray;->add(I)V

    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    .line 277
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->screenshot_bottom_boundary:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 276
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 272
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    .line 273
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->screenshot_top_boundary:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 272
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$string;->screenshot_bottom_boundary:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 294
    iget-object p1, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {p1}, Lcom/android/systemui/screenshot/CropView;->access$400(Lcom/android/systemui/screenshot/CropView;)F

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->setNodePositions(FLandroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    .line 287
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$string;->screenshot_top_boundary:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 287
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 289
    iget-object p1, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {p1}, Lcom/android/systemui/screenshot/CropView;->access$100(Lcom/android/systemui/screenshot/CropView;)F

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->setNodePositions(FLandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 299
    :goto_0
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 301
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 302
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    return-void
.end method
