.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigurationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 3947
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V
    .locals 0

    .line 3947
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 3969
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method

.method public onOverlayChanged()V
    .locals 0

    .line 3963
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 2

    .line 3951
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    .line 3952
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    .line 3955
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9702(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I

    .line 3957
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method
