.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method public static synthetic $r8$lambda$S4TflJisEB4rYVuNIdvFWQxNEgg(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;->lambda$onFragmentViewCreated$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 3110
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onFragmentViewCreated$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_0

    .line 3126
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;->onQsHeightChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    .line 3113
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    check-cast p2, Lcom/android/systemui/plugins/qs/QS;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3302(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/plugins/qs/QS;)Lcom/android/systemui/plugins/qs/QS;

    .line 3114
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/qs/QS;->setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V

    .line 3115
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/qs/QS;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    .line 3116
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/qs/QS;->setHeaderClickable(Z)V

    .line 3117
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 3118
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/qs/QS;->setOverscrolling(Z)V

    .line 3121
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15-$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 3129
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setQsContainer(Landroid/view/ViewGroup;)V

    .line 3130
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsExpansion()V

    return-void
.end method

.method public onFragmentViewDestroyed(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    .line 3138
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    if-ne p2, p1, :cond_0

    .line 3139
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3302(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/plugins/qs/QS;)Lcom/android/systemui/plugins/qs/QS;

    :cond_0
    return-void
.end method
