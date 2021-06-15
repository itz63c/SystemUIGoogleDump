.class Lcom/android/systemui/statusbar/NotificationGroupingUtil$4;
.super Ljava/lang/Object;
.source "NotificationGroupingUtil.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGroupingUtil$ResultApplicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationGroupingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 0

    const p0, 0x1020006

    .line 79
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/CachingIconView;

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/CachingIconView;->setGrayedOut(Z)V

    :cond_0
    const p0, 0x102029a

    .line 84
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/NotificationExpandButton;

    if-eqz p0, :cond_1

    .line 86
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/NotificationExpandButton;->setGrayedOut(Z)V

    :cond_1
    return-void
.end method
