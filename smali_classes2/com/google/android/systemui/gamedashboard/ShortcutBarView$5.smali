.class Lcom/google/android/systemui/gamedashboard/ShortcutBarView$5;
.super Ljava/lang/Object;
.source "ShortcutBarView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->unDock(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

.field final synthetic val$translationX:F


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;F)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$5;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    iput p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$5;->val$translationX:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 473
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$5;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$200(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 474
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$5;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$5;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$5;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1500(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$5;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$5;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1600(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 477
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$5;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1200(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$5;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1700(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 478
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$5;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$5;->val$translationX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 479
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$5;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$5;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1800(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 480
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$5;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
