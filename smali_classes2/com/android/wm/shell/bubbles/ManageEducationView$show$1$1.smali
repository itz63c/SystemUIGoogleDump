.class final Lcom/android/wm/shell/bubbles/ManageEducationView$show$1$1;
.super Ljava/lang/Object;
.source "ManageEducationView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

.field final synthetic this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;Lcom/android/wm/shell/bubbles/ManageEducationView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1$1;->$expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 106
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1$1;->$expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    sget v0, Lcom/android/wm/shell/R$id;->settings_button:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 107
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/ManageEducationView;->hide(Z)V

    return-void
.end method
