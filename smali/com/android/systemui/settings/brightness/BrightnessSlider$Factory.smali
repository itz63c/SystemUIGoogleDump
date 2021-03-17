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
.field mSettings:Lcom/android/systemui/settings/brightness/BrightnessControllerSettings;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessControllerSettings;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;->mSettings:Lcom/android/systemui/settings/brightness/BrightnessControllerSettings;

    return-void
.end method

.method private applyTheme(Lcom/android/systemui/settings/brightness/BrightnessSliderView;)V
    .locals 3

    .line 306
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;->findProgressClippableDrawable(Lcom/android/systemui/settings/brightness/BrightnessSliderView;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 308
    sget v0, Lcom/android/systemui/R$id;->slider_foreground:I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 309
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x101042a

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 308
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 311
    sget v0, Lcom/android/systemui/R$id;->slider_icon:I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 312
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x1010031

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 311
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private findProgressClippableDrawable(Lcom/android/systemui/settings/brightness/BrightnessSliderView;)Landroid/graphics/drawable/LayerDrawable;
    .locals 0

    .line 291
    sget p0, Lcom/android/systemui/R$id;->slider:I

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/SeekBar;

    .line 292
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz p1, :cond_0

    .line 293
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    const p1, 0x102000d

    .line 294
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 295
    instance-of p1, p0, Lcom/android/systemui/util/RoundedCornerProgressDrawable;

    if-eqz p1, :cond_0

    .line 296
    check-cast p0, Lcom/android/systemui/util/RoundedCornerProgressDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 297
    instance-of p1, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz p1, :cond_0

    .line 298
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private fromTree(Landroid/view/ViewGroup;Z)Lcom/android/systemui/settings/brightness/BrightnessSlider;
    .locals 1

    .line 275
    sget v0, Lcom/android/systemui/R$id;->brightness_slider:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 278
    invoke-direct {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;->applyTheme(Lcom/android/systemui/settings/brightness/BrightnessSliderView;)V

    .line 280
    new-instance p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/settings/brightness/BrightnessSlider;-><init>(Landroid/view/View;Lcom/android/systemui/settings/brightness/BrightnessSliderView;Z)V

    return-object p0
.end method

.method private getLayout()I
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;->mSettings:Lcom/android/systemui/settings/brightness/BrightnessControllerSettings;

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessControllerSettings;->useThickSlider()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 286
    sget p0, Lcom/android/systemui/R$layout;->quick_settings_brightness_dialog_thick:I

    goto :goto_0

    .line 287
    :cond_0
    sget p0, Lcom/android/systemui/R$layout;->quick_settings_brightness_dialog:I

    :goto_0
    return p0
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSlider;
    .locals 2

    .line 268
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;->getLayout()I

    move-result v0

    .line 269
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x0

    .line 270
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 271
    iget-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;->mSettings:Lcom/android/systemui/settings/brightness/BrightnessControllerSettings;

    invoke-virtual {p2}, Lcom/android/systemui/settings/brightness/BrightnessControllerSettings;->useMirrorOnThickSlider()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;->fromTree(Landroid/view/ViewGroup;Z)Lcom/android/systemui/settings/brightness/BrightnessSlider;

    move-result-object p0

    return-object p0
.end method
