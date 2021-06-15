.class public Lcom/android/settingslib/widget/IllustrationPreference;
.super Landroidx/preference/Preference;
.source "IllustrationPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/widget/IllustrationPreference$SavedState;
    }
.end annotation


# instance fields
.field private mAnimationId:I

.field private mIllustrationView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mIsAnimating:Z

.field private mPlayButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/IllustrationPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 106
    sget v0, Lcom/android/settingslib/widget/R$layout;->illustration_preference:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mIsAnimating:Z

    if-eqz p2, :cond_0

    .line 110
    sget-object v0, Lcom/android/settingslib/widget/R$styleable;->LottieAnimationView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 112
    sget p2, Lcom/android/settingslib/widget/R$styleable;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationId:I

    .line 113
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private updateAnimationStatus(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mIllustrationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    .line 120
    iget-object p0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mPlayButton:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mIllustrationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 123
    iget-object p0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mPlayButton:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method isAnimating()Z
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mIllustrationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 65
    iget v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationId:I

    if-nez v0, :cond_0

    const-string p0, "IllustrationPreference"

    const-string p1, "Invalid illustration resource id."

    .line 66
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_0
    sget v0, Lcom/android/settingslib/widget/R$id;->video_play_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mPlayButton:Landroid/widget/ImageView;

    .line 70
    sget v0, Lcom/android/settingslib/widget/R$id;->lottie_view:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mIllustrationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 71
    iget v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationId:I

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 72
    iget-object p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mIllustrationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 73
    iget-object p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mIllustrationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 74
    iget-boolean p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mIsAnimating:Z

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/IllustrationPreference;->updateAnimationStatus(Z)V

    .line 75
    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/android/settingslib/widget/IllustrationPreference;->isAnimating()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mIsAnimating:Z

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/IllustrationPreference;->updateAnimationStatus(Z)V

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 95
    check-cast p1, Lcom/android/settingslib/widget/IllustrationPreference$SavedState;

    .line 96
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 97
    iget-boolean p1, p1, Lcom/android/settingslib/widget/IllustrationPreference$SavedState;->mIsAnimating:Z

    iput-boolean p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mIsAnimating:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 87
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/android/settingslib/widget/IllustrationPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settingslib/widget/IllustrationPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 89
    iget-boolean p0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mIsAnimating:Z

    iput-boolean p0, v1, Lcom/android/settingslib/widget/IllustrationPreference$SavedState;->mIsAnimating:Z

    return-object v1
.end method
