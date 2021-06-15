.class public Lcom/google/android/systemui/gamedashboard/ToastController;
.super Ljava/lang/Object;
.source "ToastController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGameTaskId:I

.field private mIsAddedToWindowManager:I

.field private final mLaunchView:Landroid/widget/TextView;

.field private mLaunchYMargin:I

.field private mMediumAnimationDuration:I

.field private final mRecordSaveView:Landroid/widget/TextView;

.field private mRecordSaveYMargin:I

.field private mShortAnimationDuration:I

.field private final mShortcutView:Landroid/widget/TextView;

.field private mShortcutYMargin:I

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/WindowManager;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mIsAddedToWindowManager:I

    .line 81
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    .line 82
    iput-object p3, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mWindowManager:Landroid/view/WindowManager;

    .line 83
    iput v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mGameTaskId:I

    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/android/systemui/R$layout;->game_menu_shortcut_toast:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutView:Landroid/widget/TextView;

    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/android/systemui/R$layout;->game_launch_toast:I

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchView:Landroid/widget/TextView;

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/android/systemui/R$layout;->game_screen_record_save_toast:I

    invoke-virtual {p1, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveView:Landroid/widget/TextView;

    .line 92
    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 93
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ToastController;->setResourceValues()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/gamedashboard/ToastController;)Landroid/widget/TextView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/gamedashboard/ToastController;)Landroid/widget/TextView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/gamedashboard/ToastController;)Landroid/widget/TextView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveView:Landroid/widget/TextView;

    return-object p0
.end method

.method private setResourceValues()V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    .line 300
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortAnimationDuration:I

    const v1, 0x10e0001

    .line 301
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mMediumAnimationDuration:I

    .line 302
    sget v1, Lcom/android/systemui/R$dimen;->rounded_corner_content_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutYMargin:I

    .line 303
    sget v1, Lcom/android/systemui/R$dimen;->game_launch_toast_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchYMargin:I

    .line 304
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveYMargin:I

    return-void
.end method

.method private show(Ljava/lang/String;I)V
    .locals 13

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v2, :cond_0

    .line 151
    iget v4, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchYMargin:I

    :goto_0
    move v9, v4

    goto :goto_1

    :cond_0
    if-ne p2, v1, :cond_1

    .line 153
    iget v4, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutYMargin:I

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    .line 155
    iget v4, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveYMargin:I

    goto :goto_0

    :cond_2
    move v9, v3

    .line 158
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ToastController;->removeViewImmediate()V

    .line 160
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/4 v8, 0x0

    const/16 v10, 0x7e8

    const/16 v11, 0x8

    const/4 v12, -0x3

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 165
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v5, "ToastText"

    .line 166
    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v4, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/16 v5, 0x50

    .line 168
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    if-ne p2, v2, :cond_3

    .line 171
    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchView:Landroid/widget/TextView;

    const/high16 p2, 0x447a0000    # 1000.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 173
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchView:Landroid/widget/TextView;

    invoke-interface {p1, p2, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iput v2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mIsAddedToWindowManager:I

    .line 175
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 177
    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mMediumAnimationDuration:I

    int-to-long v0, p2

    .line 178
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 179
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/google/android/systemui/gamedashboard/ToastController$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/gamedashboard/ToastController$1;-><init>(Lcom/google/android/systemui/gamedashboard/ToastController;)V

    .line 180
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p2, v1, :cond_4

    .line 187
    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 189
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutView:Landroid/widget/TextView;

    invoke-interface {p1, p2, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iput v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mIsAddedToWindowManager:I

    .line 191
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 193
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortAnimationDuration:I

    int-to-long v0, p2

    .line 194
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 195
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/google/android/systemui/gamedashboard/ToastController$2;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/gamedashboard/ToastController$2;-><init>(Lcom/google/android/systemui/gamedashboard/ToastController;)V

    .line 196
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    :cond_4
    if-ne p2, v0, :cond_5

    .line 203
    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveView:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 205
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveView:Landroid/widget/TextView;

    invoke-interface {p1, p2, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iput v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mIsAddedToWindowManager:I

    .line 207
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 209
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortAnimationDuration:I

    int-to-long v0, p2

    .line 210
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 211
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/google/android/systemui/gamedashboard/ToastController$3;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/gamedashboard/ToastController$3;-><init>(Lcom/google/android/systemui/gamedashboard/ToastController;)V

    .line 212
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public hide()Z
    .locals 7

    .line 227
    iget v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mIsAddedToWindowManager:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 232
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x447a0000    # 1000.0f

    .line 233
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mMediumAnimationDuration:I

    int-to-long v2, v2

    .line 234
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    .line 235
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/google/android/systemui/gamedashboard/ToastController$4;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/gamedashboard/ToastController$4;-><init>(Lcom/google/android/systemui/gamedashboard/ToastController;)V

    .line 236
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    if-ne v0, v2, :cond_2

    .line 244
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 245
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortAnimationDuration:I

    int-to-long v5, v2

    .line 246
    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 247
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/google/android/systemui/gamedashboard/ToastController$5;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/gamedashboard/ToastController$5;-><init>(Lcom/google/android/systemui/gamedashboard/ToastController;)V

    .line 248
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 256
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 257
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortAnimationDuration:I

    int-to-long v5, v2

    .line 258
    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 259
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/google/android/systemui/gamedashboard/ToastController$6;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/gamedashboard/ToastController$6;-><init>(Lcom/google/android/systemui/gamedashboard/ToastController;)V

    .line 260
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_3
    :goto_0
    return v1
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 309
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ToastController;->setResourceValues()V

    return-void
.end method

.method public remove()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ToastController;->removeViewImmediate()V

    return-void
.end method

.method public removeViewImmediate()V
    .locals 2

    .line 275
    iget v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mIsAddedToWindowManager:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchView:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 278
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutView:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 280
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveView:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 282
    iput v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mIsAddedToWindowManager:I

    return-void
.end method

.method public showLaunchText(IIZ)V
    .locals 3

    .line 100
    iget v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mGameTaskId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 103
    :cond_0
    iput p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mGameTaskId:I

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    const-string v1, ""

    if-eqz p3, :cond_1

    .line 108
    iget-object p3, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->game_launch_dnd_on:I

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_1

    const-string p3, ".\n"

    .line 112
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "."

    goto :goto_0

    :cond_1
    move-object p3, v1

    :goto_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 116
    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->game_launch_performance:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    .line 119
    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->game_launch_battery:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/gamedashboard/ToastController;->show(Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public showRecordSaveText()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->game_screen_record_saved:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x3

    .line 142
    invoke-direct {p0, v0, v1}, Lcom/google/android/systemui/gamedashboard/ToastController;->show(Ljava/lang/String;I)V

    return-void
.end method

.method public showShortcutText(I)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x2

    .line 133
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/gamedashboard/ToastController;->show(Ljava/lang/String;I)V

    return-void
.end method
