.class Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$TopViewHolder;
.super Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$ViewHolder;
.source "AccessibilityTargetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TopViewHolder"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 146
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p1, p0, p0, p0, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method
