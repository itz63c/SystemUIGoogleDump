.class public interface abstract Lcom/android/systemui/qs/dagger/QSFragmentModule;
.super Ljava/lang/Object;
.source "QSFragmentModule.java"


# direct methods
.method public static provideQSPanel(Landroid/view/View;)Lcom/android/systemui/qs/QSPanel;
    .locals 1

    .line 62
    sget v0, Lcom/android/systemui/R$id;->quick_settings_panel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    return-object p0
.end method

.method public static provideRootView(Lcom/android/systemui/qs/QSFragment;)Landroid/view/View;
    .locals 0

    .line 56
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static providesQSContainerImpl(Landroid/view/View;)Lcom/android/systemui/qs/QSContainerImpl;
    .locals 1

    .line 68
    sget v0, Lcom/android/systemui/R$id;->quick_settings_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSContainerImpl;

    return-object p0
.end method

.method public static providesQSCutomizer(Landroid/view/View;)Lcom/android/systemui/qs/customize/QSCustomizer;
    .locals 1

    .line 105
    sget v0, Lcom/android/systemui/R$id;->qs_customize:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/QSCustomizer;

    return-object p0
.end method

.method public static providesQSFooter(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/systemui/qs/QSFooter;
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-object p0
.end method

.method public static providesQSFooterView(Landroid/view/View;)Lcom/android/systemui/qs/QSFooterView;
    .locals 1

    .line 90
    sget v0, Lcom/android/systemui/R$id;->qs_footer:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSFooterView;

    return-object p0
.end method

.method public static providesQSSecurityFooterView(Landroid/view/LayoutInflater;Lcom/android/systemui/qs/QSPanel;)Landroid/view/View;
    .locals 2

    .line 113
    sget v0, Lcom/android/systemui/R$layout;->quick_settings_footer:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static providesQSUsingMediaPlayer(Landroid/content/Context;)Z
    .locals 0

    .line 120
    invoke-static {p0}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static providesQuickQSPanel(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/qs/QuickQSPanel;
    .locals 1

    .line 84
    sget v0, Lcom/android/systemui/R$id;->quick_qs_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QuickQSPanel;

    return-object p0
.end method

.method public static providesQuickStatusBarHeader(Landroid/view/View;)Lcom/android/systemui/qs/QuickStatusBarHeader;
    .locals 1

    .line 78
    sget v0, Lcom/android/systemui/R$id;->header:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    return-object p0
.end method
