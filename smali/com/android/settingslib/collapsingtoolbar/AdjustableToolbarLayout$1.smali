.class Lcom/android/settingslib/collapsingtoolbar/AdjustableToolbarLayout$1;
.super Ljava/lang/Object;
.source "AdjustableToolbarLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/collapsingtoolbar/AdjustableToolbarLayout;->initCollapsingToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/collapsingtoolbar/AdjustableToolbarLayout;


# direct methods
.method constructor <init>(Lcom/android/settingslib/collapsingtoolbar/AdjustableToolbarLayout;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/settingslib/collapsingtoolbar/AdjustableToolbarLayout$1;->this$0:Lcom/android/settingslib/collapsingtoolbar/AdjustableToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 61
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 62
    iget-object p1, p0, Lcom/android/settingslib/collapsingtoolbar/AdjustableToolbarLayout$1;->this$0:Lcom/android/settingslib/collapsingtoolbar/AdjustableToolbarLayout;

    invoke-static {p1}, Lcom/android/settingslib/collapsingtoolbar/AdjustableToolbarLayout;->access$000(Lcom/android/settingslib/collapsingtoolbar/AdjustableToolbarLayout;)I

    move-result p1

    const/4 p2, 0x2

    if-le p1, p2, :cond_0

    .line 64
    iget-object p1, p0, Lcom/android/settingslib/collapsingtoolbar/AdjustableToolbarLayout$1;->this$0:Lcom/android/settingslib/collapsingtoolbar/AdjustableToolbarLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/AdjustableToolbarLayout$1;->this$0:Lcom/android/settingslib/collapsingtoolbar/AdjustableToolbarLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settingslib/collapsingtoolbar/R$dimen;->toolbar_three_lines_height:I

    .line 66
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67
    iget-object p0, p0, Lcom/android/settingslib/collapsingtoolbar/AdjustableToolbarLayout$1;->this$0:Lcom/android/settingslib/collapsingtoolbar/AdjustableToolbarLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    .line 69
    iget-object p1, p0, Lcom/android/settingslib/collapsingtoolbar/AdjustableToolbarLayout$1;->this$0:Lcom/android/settingslib/collapsingtoolbar/AdjustableToolbarLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 70
    iget-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/AdjustableToolbarLayout$1;->this$0:Lcom/android/settingslib/collapsingtoolbar/AdjustableToolbarLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settingslib/collapsingtoolbar/R$dimen;->toolbar_two_lines_height:I

    .line 71
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    iget-object p0, p0, Lcom/android/settingslib/collapsingtoolbar/AdjustableToolbarLayout$1;->this$0:Lcom/android/settingslib/collapsingtoolbar/AdjustableToolbarLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method
