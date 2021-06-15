.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnApplyWindowInsetsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 4211
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V
    .locals 0

    .line 4211
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 4213
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    .line 4214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$12602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I

    .line 4216
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$12702(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I

    .line 4217
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$11900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-object p2
.end method
