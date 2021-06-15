.class Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;
.super Ljava/lang/Object;
.source "ShortcutBarView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->init(Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/os/Handler;Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Lcom/android/internal/logging/UiEventLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v2}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$400(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 232
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 236
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
