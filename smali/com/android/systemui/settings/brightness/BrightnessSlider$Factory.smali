.class public Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;
.super Ljava/lang/Object;
.source "BrightnessSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/brightness/BrightnessSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-void
.end method

.method private getLayout()I
    .locals 0

    .line 248
    sget p0, Lcom/android/systemui/R$layout;->quick_settings_brightness_dialog:I

    return p0
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSlider;
    .locals 2

    .line 240
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;->getLayout()I

    move-result v0

    .line 241
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x0

    .line 242
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 243
    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessSlider;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSliderView;Lcom/android/systemui/plugins/FalsingManager;)V

    return-object p2
.end method
