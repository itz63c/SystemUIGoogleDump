.class Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$BottomViewHolder;
.super Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$ViewHolder;
.source "AccessibilityTargetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BottomViewHolder"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 154
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 155
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$ViewHolder;->mDivider:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p1, p0, v0, p0, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method
