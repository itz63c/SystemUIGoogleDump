.class Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;
.super Landroid/widget/FrameLayout;
.source "ScreenPinningRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/ScreenPinningRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestWindowView"
.end annotation


# instance fields
.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mColor:Landroid/graphics/drawable/ColorDrawable;

.field private mColorAnim:Landroid/animation/ValueAnimator;

.field private mLayout:Landroid/view/ViewGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowCancel:Z

.field private final mUpdateLayoutRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/recents/ScreenPinningRequest;


# direct methods
.method public static synthetic $r8$lambda$wYShk2fUBRDFLhCqRnFc-SrsIdw(Ldagger/Lazy;)Lcom/android/systemui/navigationbar/NavigationBarView;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->lambda$inflateView$0(Ldagger/Lazy;)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/systemui/recents/ScreenPinningRequest;Landroid/content/Context;Z)V
    .locals 1

    .line 178
    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    .line 179
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 171
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p2, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    .line 175
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 176
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 359
    new-instance v0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$2;-><init>(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    .line 368
    new-instance v0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$3;-><init>(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x1

    .line 180
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 181
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iput-boolean p3, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mShowCancel:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)Landroid/graphics/drawable/ColorDrawable;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)Landroid/view/ViewGroup;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)Landroid/content/Context;
    .locals 0

    .line 168
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;Landroid/content/Context;)I
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->getRotation(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)Ljava/lang/Runnable;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private getRotation(Landroid/content/Context;)I
    .locals 1

    .line 351
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 352
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x258

    if-lt p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 356
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private inflateView(I)V
    .locals 7

    .line 237
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 238
    sget v2, Lcom/android/systemui/R$layout;->screen_pinning_request_sea_phone:I

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 239
    sget v2, Lcom/android/systemui/R$layout;->screen_pinning_request_land_phone:I

    goto :goto_0

    .line 240
    :cond_1
    sget v2, Lcom/android/systemui/R$layout;->screen_pinning_request:I

    :goto_0
    const/4 v3, 0x0

    .line 237
    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    .line 243
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v4, Lcom/android/systemui/R$id;->screen_pinning_text_area:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x3

    .line 248
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutDirection(I)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->screen_pinning_buttons:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 250
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v5

    .line 251
    iget-object v6, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-static {v6}, Lcom/android/systemui/recents/ScreenPinningRequest;->access$200(Lcom/android/systemui/recents/ScreenPinningRequest;)I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 252
    invoke-virtual {v6}, Landroid/content/Context;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->hasSoftNavigationBar(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 253
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutDirection(I)V

    .line 254
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->swapChildrenIfRtlAndVertical(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    const/16 v4, 0x8

    .line 256
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v4, Lcom/android/systemui/R$id;->screen_pinning_ok_button:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    .line 260
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-boolean v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mShowCancel:Z

    const/4 v4, 0x4

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->screen_pinning_cancel_button:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    .line 263
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->screen_pinning_cancel_button:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 266
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 269
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-static {v0}, Lcom/android/systemui/recents/ScreenPinningRequest;->access$300(Lcom/android/systemui/recents/ScreenPinningRequest;)Ljava/util/Optional;

    move-result-object v0

    sget-object v5, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 270
    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz v0, :cond_4

    .line 272
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isRecentsButtonVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    .line 273
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-static {v3}, Lcom/android/systemui/recents/ScreenPinningRequest;->access$400(Lcom/android/systemui/recents/ScreenPinningRequest;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    .line 275
    iget-object v5, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-static {v5}, Lcom/android/systemui/recents/ScreenPinningRequest;->access$200(Lcom/android/systemui/recents/ScreenPinningRequest;)I

    move-result v5

    invoke-static {v5}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 276
    sget v1, Lcom/android/systemui/R$string;->screen_pinning_description_gestural:I

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_7

    .line 278
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->screen_pinning_recents_group:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->screen_pinning_home_bg_light:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->screen_pinning_home_bg:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v3, :cond_6

    .line 282
    sget v1, Lcom/android/systemui/R$string;->screen_pinning_description_accessible:I

    goto :goto_4

    .line 283
    :cond_6
    sget v1, Lcom/android/systemui/R$string;->screen_pinning_description:I

    goto :goto_4

    .line 285
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->screen_pinning_recents_group:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->screen_pinning_home_bg_light:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->screen_pinning_home_bg:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v3, :cond_8

    .line 289
    sget v1, Lcom/android/systemui/R$string;->screen_pinning_description_recents_invisible_accessible:I

    goto :goto_4

    .line 290
    :cond_8
    sget v1, Lcom/android/systemui/R$string;->screen_pinning_description_recents_invisible:I

    :goto_4
    if-eqz v0, :cond_9

    .line 294
    iget-object v5, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v6, Lcom/android/systemui/R$id;->screen_pinning_back_icon:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 295
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget-object v5, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v6, Lcom/android/systemui/R$id;->screen_pinning_home_icon:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 297
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/android/systemui/R$dimen;->screen_pinning_description_bullet_gap_width:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 303
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 304
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v6, Landroid/text/style/BulletSpan;

    invoke-direct {v6, v0}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-virtual {v5, v1, v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 306
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 307
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v6, Lcom/android/systemui/R$string;->screen_pinning_exposes_personal_data:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v6, Landroid/text/style/BulletSpan;

    invoke-direct {v6, v0}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-virtual {v5, v1, v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 309
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 310
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v6, Lcom/android/systemui/R$string;->screen_pinning_can_open_other_apps:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v6, Landroid/text/style/BulletSpan;

    invoke-direct {v6, v0}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-virtual {v5, v1, v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 312
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->screen_pinning_description:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_a

    move v2, v4

    .line 315
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->screen_pinning_back_bg:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->screen_pinning_back_bg_light:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/ScreenPinningRequest;->getRequestLayoutParams(I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static synthetic lambda$inflateView$0(Ldagger/Lazy;)Lcom/android/systemui/navigationbar/NavigationBarView;
    .locals 0

    .line 270
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    return-object p0
.end method

.method private swapChildrenIfRtlAndVertical(Landroid/view/View;)V
    .locals 4

    .line 322
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return-void

    .line 326
    :cond_0
    check-cast p1, Landroid/widget/LinearLayout;

    .line 327
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p0

    if-ne p0, v0, :cond_2

    .line 328
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    .line 329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    .line 331
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    :cond_1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    sub-int/2addr p0, v0

    :goto_1
    if-ltz p0, :cond_2

    .line 335
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 8

    .line 188
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 189
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-static {v1}, Lcom/android/systemui/recents/ScreenPinningRequest;->access$000(Lcom/android/systemui/recents/ScreenPinningRequest;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 190
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 191
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->getRotation(Landroid/content/Context;)I

    move-result v1

    .line 193
    invoke-direct {p0, v1}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->inflateView(I)V

    .line 194
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$color;->screen_pinning_request_window_bg:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 196
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    iget-object v3, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v3, 0x1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const/high16 v6, -0x3d400000    # -96.0f

    mul-float/2addr v0, v6

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    const/high16 v6, 0x42c00000    # 96.0f

    if-ne v1, v3, :cond_1

    .line 201
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    mul-float/2addr v0, v6

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    mul-float/2addr v0, v6

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 205
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 206
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 207
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 208
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v6, 0x12c

    .line 209
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 210
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 213
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    .line 214
    new-instance v1, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$1;-><init>(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 222
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 227
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 229
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected onConfigurationChanged()V
    .locals 1

    .line 346
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 347
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->getRotation(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->inflateView(I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
