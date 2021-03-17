.class Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;
.super Lcom/android/wm/shell/pip/phone/PipTouchGesture;
.source "PipTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/phone/PipTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultPipTouchGesture"
.end annotation


# instance fields
.field private final mDelta:Landroid/graphics/PointF;

.field private mDownSavedFraction:F

.field private mShouldHideMenuAfterFling:Z

.field private final mStartPosition:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;


# direct methods
.method public static synthetic $r8$lambda$H-3aFeIWNG469zqYi4-KSqnmaog(Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->flingEndAction()V

    return-void
.end method

.method public static synthetic $r8$lambda$TSXPUf4yvdhVQVO04RZ6xmqJgh0(Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->stashEndAction()V

    return-void
.end method

.method private constructor <init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V
    .locals 0

    .line 781
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipTouchGesture;-><init>()V

    .line 782
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mStartPosition:Landroid/graphics/Point;

    .line 783
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mDelta:Landroid/graphics/PointF;

    const/high16 p1, -0x40800000    # -1.0f

    .line 785
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mDownSavedFraction:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;Lcom/android/wm/shell/pip/phone/PipTouchHandler$1;)V
    .locals 0

    .line 781
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V

    return-void
.end method

.method private flingEndAction()V
    .locals 1

    .line 932
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mShouldHideMenuAfterFling:Z

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$700(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu()V

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$2100(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 939
    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$2100(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 940
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$2100(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Consumer;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private shouldStash(Landroid/graphics/PointF;Landroid/graphics/Rect;)Z
    .locals 5

    .line 948
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$2200(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)F

    move-result v1

    neg-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 949
    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getStashedState()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 950
    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$2200(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 951
    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getStashedState()I

    move-result p1

    if-eq p1, v3, :cond_2

    :cond_1
    move p1, v3

    goto :goto_0

    :cond_2
    move p1, v2

    .line 955
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v1

    .line 956
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 957
    invoke-static {v4}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    if-gt v1, v4, :cond_4

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 959
    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v0

    if-ge p2, p0, :cond_3

    goto :goto_1

    :cond_3
    move p0, v2

    goto :goto_2

    :cond_4
    :goto_1
    move p0, v3

    :goto_2
    if-nez p1, :cond_5

    if-eqz p0, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    return v2
.end method

.method private stashEndAction()V
    .locals 2

    .line 920
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$2100(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 921
    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$2100(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$2100(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-gez v0, :cond_1

    .line 925
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/PipBoundsState;->setStashed(I)V

    goto :goto_0

    .line 927
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/PipBoundsState;->setStashed(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onDown(Lcom/android/wm/shell/pip/phone/PipTouchState;)V
    .locals 3

    .line 789
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getPossiblyMotionBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 794
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mDelta:Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 795
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mStartPosition:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 796
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchState;->getDownTouchPosition()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 797
    invoke-static {v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getMovementBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    const/4 v1, 0x0

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 796
    :goto_0
    invoke-static {v0, p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$1002(Lcom/android/wm/shell/pip/phone/PipTouchHandler;Z)Z

    .line 798
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$100(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->setSpringingToTouch(Z)V

    .line 799
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$1100(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getSnapFraction(Landroid/graphics/Rect;)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mDownSavedFraction:F

    .line 803
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$1200(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 804
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$700(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->pokeMenu()V

    :cond_2
    return-void
.end method

.method public onMove(Lcom/android/wm/shell/pip/phone/PipTouchState;)Z
    .locals 8

    .line 810
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 814
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchState;->startedDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$1302(Lcom/android/wm/shell/pip/phone/PipTouchHandler;F)F

    .line 816
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$1400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->showDismissTargetMaybe()V

    .line 819
    :cond_1
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchState;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 821
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchState;->getLastTouchDelta()Landroid/graphics/PointF;

    move-result-object v0

    .line 822
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mStartPosition:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mDelta:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v5

    .line 823
    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v6, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v6

    .line 824
    iget v7, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v3

    .line 825
    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v2

    sub-float v3, v7, v3

    add-float/2addr v5, v3

    .line 828
    iput v5, v4, Landroid/graphics/PointF;->x:F

    sub-float v2, v0, v2

    add-float/2addr v6, v2

    .line 829
    iput v6, v4, Landroid/graphics/PointF;->y:F

    .line 831
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$1500(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {v3}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getPossiblyMotionBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 832
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$1500(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v2

    float-to-int v3, v7

    float-to-int v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 833
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$100(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$1500(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;Z)V

    .line 835
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchState;->getLastTouchPosition()Landroid/graphics/PointF;

    move-result-object p1

    .line 836
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$1000(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 838
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getMovementBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    move v1, v3

    :cond_2
    invoke-static {p0, v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$1002(Lcom/android/wm/shell/pip/phone/PipTouchHandler;Z)Z

    :cond_3
    return v3

    :cond_4
    return v1
.end method

.method public onUp(Lcom/android/wm/shell/pip/phone/PipTouchState;)Z
    .locals 9

    .line 847
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$1400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->hideDismissTargetMaybe()V

    .line 849
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 853
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchState;->getVelocity()Landroid/graphics/PointF;

    move-result-object v0

    .line 855
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchState;->isDragging()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 856
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$1200(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 859
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$700(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    move-result-object v3

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$1200(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)I

    move-result v4

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x1

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 860
    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$500(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Z

    move-result v7

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 861
    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$600(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Z

    move-result v8

    .line 859
    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->showMenu(ILandroid/graphics/Rect;ZZZ)V

    .line 863
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$1200(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)I

    move-result p1

    if-nez p1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mShouldHideMenuAfterFling:Z

    .line 866
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$300(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/phone/PipTouchState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchState;->reset()V

    .line 867
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$1600(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getPossiblyMotionBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->shouldStash(Landroid/graphics/PointF;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 868
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$100(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    move-result-object p1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    new-instance v3, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture-$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;)V

    invoke-virtual {p1, v1, v0, v3}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->stashToEdge(FFLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 870
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/pip/PipBoundsState;->setStashed(I)V

    .line 871
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$100(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    move-result-object p1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    new-instance v3, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture-$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;)V

    invoke-virtual {p1, v1, v0, v3}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->flingToSnapTarget(FFLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 874
    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$300(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/phone/PipTouchState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchState;->isDoubleTap()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    move-result p1

    if-nez p1, :cond_9

    .line 876
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$1700(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->isUsingPinchToZoom()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 877
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 878
    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getMaxSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ge p1, v0, :cond_5

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 879
    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 880
    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getMaxSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ge p1, v0, :cond_5

    move p1, v2

    goto :goto_1

    :cond_5
    move p1, v1

    .line 881
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$700(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 882
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$700(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu(ZZ)V

    :cond_6
    if-eqz p1, :cond_7

    .line 885
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$1700(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->setUserResizeBounds(Landroid/graphics/Rect;)V

    .line 886
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$1800(Lcom/android/wm/shell/pip/phone/PipTouchHandler;Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 888
    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getUserResizeBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$1900(Lcom/android/wm/shell/pip/phone/PipTouchHandler;Landroid/graphics/Rect;)V

    goto :goto_2

    .line 893
    :cond_8
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->setTouchEnabled(Z)V

    .line 894
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$100(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->expandLeavePip()V

    goto :goto_2

    .line 896
    :cond_9
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$1200(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    .line 897
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$300(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/phone/PipTouchState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchState;->isWaitingForDoubleTap()Z

    move-result p1

    if-nez p1, :cond_b

    .line 898
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 899
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$2000(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V

    .line 900
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/pip/PipBoundsState;->setStashed(I)V

    goto :goto_2

    .line 904
    :cond_a
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$700(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    move-result-object v3

    const/4 v4, 0x2

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$400(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x1

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 905
    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$500(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Z

    move-result v7

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 906
    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$600(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Z

    move-result v8

    .line 904
    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->showMenu(ILandroid/graphics/Rect;ZZZ)V

    goto :goto_2

    .line 912
    :cond_b
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->access$300(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)Lcom/android/wm/shell/pip/phone/PipTouchState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchState;->scheduleDoubleTapTimeoutCallback()V

    :cond_c
    :goto_2
    const/high16 p1, -0x40800000    # -1.0f

    .line 915
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mDownSavedFraction:F

    return v2
.end method
