.class Lcom/android/systemui/qs/customize/QSCustomizer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/QSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 244
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$000(Lcom/android/systemui/qs/customize/QSCustomizer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$200(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 236
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$000(Lcom/android/systemui/qs/customize/QSCustomizer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 237
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 239
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$200(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    return-void
.end method
