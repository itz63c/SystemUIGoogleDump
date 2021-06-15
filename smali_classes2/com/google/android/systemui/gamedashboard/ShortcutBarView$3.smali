.class Lcom/google/android/systemui/gamedashboard/ShortcutBarView$3;
.super Ljava/lang/Object;
.source "ShortcutBarView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->onCountdownEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$3;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$3;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$3;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$800(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    .line 326
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$3;->val$drawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 327
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 326
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
