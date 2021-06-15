.class Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;
.super Ljava/lang/Object;
.source "ShortcutBarView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/gamedashboard/ShortcutBarView;
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

    .line 133
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    .line 138
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    sub-int/2addr p4, p2

    int-to-float p2, p4

    sub-int/2addr p8, p6

    int-to-float p4, p8

    sub-int/2addr p5, p3

    int-to-float p3, p5

    sub-int/2addr p9, p7

    int-to-float p5, p9

    .line 146
    iget-object p6, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p6}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View;

    move-result-object p6

    invoke-virtual {p6}, Landroid/view/View;->getWidth()I

    move-result p6

    .line 147
    iget-object p7, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p7}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View;

    move-result-object p7

    invoke-virtual {p7}, Landroid/view/View;->getHeight()I

    move-result p7

    .line 148
    iget-object p8, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p8}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View;

    move-result-object p8

    invoke-virtual {p8}, Landroid/view/View;->getVisibility()I

    move-result p8

    if-nez p8, :cond_1

    .line 149
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$200(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p4, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p4}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$300(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/widget/ImageView;

    move-result-object p4

    if-ne p1, p4, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$400(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)F

    move-result p1

    neg-float p1, p1

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$400(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)F

    move-result p1

    sub-float p1, p2, p1

    goto :goto_0

    :cond_1
    int-to-float p6, p6

    sub-float/2addr p2, p6

    mul-float/2addr p2, p1

    sub-float/2addr p4, p6

    div-float p1, p2, p4

    :goto_0
    int-to-float p2, p7

    sub-float/2addr p3, p2

    mul-float/2addr p3, v0

    sub-float/2addr p5, p2

    div-float/2addr p3, p5

    .line 156
    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p2}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 157
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 158
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$500(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V

    .line 159
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$600(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
