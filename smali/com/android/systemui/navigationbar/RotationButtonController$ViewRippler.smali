.class Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;
.super Ljava/lang/Object;
.source "RotationButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/RotationButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewRippler"
.end annotation


# instance fields
.field private final mRipple:Ljava/lang/Runnable;

.field private mRoot:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/navigationbar/RotationButtonController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->this$0:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    new-instance p1, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler$1;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->mRipple:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/navigationbar/RotationButtonController;Lcom/android/systemui/navigationbar/RotationButtonController$1;)V
    .locals 0

    .line 500
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;)Landroid/view/View;
    .locals 0

    .line 500
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->mRoot:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public start(Landroid/view/View;)V
    .locals 3

    .line 506
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->stop()V

    .line 508
    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->mRoot:Landroid/view/View;

    .line 511
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->mRipple:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 512
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->mRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->mRipple:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 513
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->mRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->mRipple:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 514
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->mRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->mRipple:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1770

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 515
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->mRoot:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->mRipple:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f40

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->mRipple:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
