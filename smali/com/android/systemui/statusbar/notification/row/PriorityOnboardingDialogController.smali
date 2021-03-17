.class public final Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;
.super Ljava/lang/Object;
.source "PriorityOnboardingDialogController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;
    }
.end annotation


# instance fields
.field private final IMPORTANCE_ANIM_DELAY:J

.field private final IMPORTANCE_ANIM_GROW_DURATION:J

.field private final IMPORTANCE_ANIM_SHRINK_DELAY:J

.field private final IMPORTANCE_ANIM_SHRINK_DURATION:J

.field private final OVERSHOOT:Landroid/view/animation/Interpolator;

.field private final badge:Landroid/graphics/drawable/Drawable;

.field private final context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private final icon:Landroid/graphics/drawable/Drawable;

.field private final ignoresDnd:Z

.field private final onConversationSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;

.field private final showsAsBubble:Z

.field private final view:Landroid/view/View;

.field private final wmFlags:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;ZZLandroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onConversationSettingsClickListener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badge"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->view:Landroid/view/View;

    .line 56
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->context:Landroid/content/Context;

    .line 57
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->ignoresDnd:Z

    .line 58
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->showsAsBubble:Z

    .line 59
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->icon:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->onConversationSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;

    .line 61
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->badge:Landroid/graphics/drawable/Drawable;

    .line 65
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3ecccccd    # 0.4f

    const/4 p3, 0x0

    const p4, 0x3e4ccccd    # 0.2f

    const p5, 0x3fb33333    # 1.4f

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->OVERSHOOT:Landroid/view/animation/Interpolator;

    const-wide/16 p1, 0x96

    .line 66
    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->IMPORTANCE_ANIM_DELAY:J

    const-wide/16 p1, 0xfa

    .line 67
    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->IMPORTANCE_ANIM_GROW_DURATION:J

    const-wide/16 p1, 0xc8

    .line 68
    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->IMPORTANCE_ANIM_SHRINK_DURATION:J

    const-wide/16 p1, 0x19

    .line 69
    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->IMPORTANCE_ANIM_SHRINK_DELAY:J

    const/high16 p1, -0x7efc0000

    .line 267
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->wmFlags:I

    return-void
.end method

.method public static final synthetic access$done(Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->done()V

    return-void
.end method

.method public static final synthetic access$settings(Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->settings()V

    return-void
.end method

.method private final done()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->context:Landroid/content/Context;

    const-string v1, "HasUserSeenPriorityOnboarding"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->dialog:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_0
    const-string p0, "dialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final initDialog()V
    .locals 17

    move-object/from16 v0, p0

    .line 145
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->dialog:Landroid/app/Dialog;

    .line 147
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 151
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->dialog:Landroid/app/Dialog;

    const-string v3, "dialog"

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v4, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 153
    :goto_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_a

    const-string/jumbo v5, "\u00a0"

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_9

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 156
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 158
    sget v5, Lcom/android/systemui/R$id;->done_button:I

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v6, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$1;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$1;-><init>(Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    :goto_1
    sget v5, Lcom/android/systemui/R$id;->settings_button:I

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    new-instance v6, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$2;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$2;-><init>(Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    :goto_2
    sget v5, Lcom/android/systemui/R$id;->conversation_icon:I

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    :goto_3
    sget v5, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :goto_4
    sget v5, Lcom/android/systemui/R$id;->conversation_icon_badge_ring:I

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 169
    sget v6, Lcom/android/systemui/R$id;->conversation_icon_badge_bg:I

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 171
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 172
    invoke-virtual {v7}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 173
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v9, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v9, Landroid/graphics/drawable/GradientDrawable;

    .line 174
    invoke-virtual {v9}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 175
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x1060159

    .line 176
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 177
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x105015e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 179
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x105015c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 181
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x105015d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    mul-int/lit8 v13, v10, 0x2

    sub-int/2addr v12, v13

    .line 185
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10500eb

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 189
    new-instance v14, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$animatorUpdateListener$1;

    invoke-direct {v14, v7, v8, v12, v5}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$animatorUpdateListener$1;-><init>(Landroid/graphics/drawable/GradientDrawable;IILandroid/widget/ImageView;)V

    const/4 v5, 0x2

    new-array v7, v5, [I

    const/4 v8, 0x0

    aput v8, v7, v8

    aput v11, v7, v4

    .line 197
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    const-string v15, "ofInt(0, largeThickness)"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    sget-object v15, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v15}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v16, v3

    .line 199
    iget-wide v2, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->IMPORTANCE_ANIM_GROW_DURATION:J

    invoke-virtual {v7, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 200
    invoke-virtual {v7, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v5, [I

    aput v11, v2, v8

    aput v10, v2, v4

    .line 203
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-string v3, "ofInt(largeThickness, standardThickness)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-wide v10, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->IMPORTANCE_ANIM_SHRINK_DURATION:J

    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 205
    iget-wide v10, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->IMPORTANCE_ANIM_SHRINK_DELAY:J

    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 206
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->OVERSHOOT:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 207
    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 208
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$3;

    invoke-direct {v3, v9, v12, v6, v13}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$3;-><init>(Landroid/graphics/drawable/GradientDrawable;ILandroid/widget/ImageView;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 223
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 224
    iget-wide v9, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->IMPORTANCE_ANIM_DELAY:J

    invoke-virtual {v3, v9, v10}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v7, v5, v8

    aput-object v2, v5, v4

    .line 225
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 227
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->dialog:Landroid/app/Dialog;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 228
    sget v4, Lcom/android/systemui/R$dimen;->conversation_onboarding_bullet_gap_width:I

    .line 227
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 229
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 230
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->priority_onboarding_show_at_top_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 231
    new-instance v6, Landroid/text/style/BulletSpan;

    invoke-direct {v6, v2}, Landroid/text/style/BulletSpan;-><init>(I)V

    .line 230
    invoke-virtual {v4, v5, v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 232
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 233
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->priority_onboarding_show_avatar_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 234
    new-instance v6, Landroid/text/style/BulletSpan;

    invoke-direct {v6, v2}, Landroid/text/style/BulletSpan;-><init>(I)V

    .line 233
    invoke-virtual {v4, v5, v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 235
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->showsAsBubble:Z

    if-eqz v5, :cond_5

    .line 236
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 237
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 238
    sget v6, Lcom/android/systemui/R$string;->priority_onboarding_appear_as_bubble_text:I

    .line 237
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 239
    new-instance v6, Landroid/text/style/BulletSpan;

    invoke-direct {v6, v2}, Landroid/text/style/BulletSpan;-><init>(I)V

    .line 237
    invoke-virtual {v4, v5, v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 241
    :cond_5
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->ignoresDnd:Z

    if-eqz v5, :cond_6

    .line 242
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 243
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->priority_onboarding_ignores_dnd_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 244
    new-instance v6, Landroid/text/style/BulletSpan;

    invoke-direct {v6, v2}, Landroid/text/style/BulletSpan;-><init>(I)V

    .line 243
    invoke-virtual {v4, v5, v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 246
    :cond_6
    sget v2, Lcom/android/systemui/R$id;->behaviors:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_5

    .line 249
    :cond_7
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget v0, v0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->wmFlags:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    const/16 v0, 0x7e1

    .line 251
    invoke-virtual {v1, v0}, Landroid/view/Window;->setType(I)V

    const v0, 0x1030056

    .line 252
    invoke-virtual {v1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 254
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v2, -0x3

    .line 255
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 256
    const-class v2, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v2, 0x51

    .line 257
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 258
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    not-int v4, v4

    and-int/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v2, -0x1

    .line 259
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 260
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 261
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 254
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 263
    :goto_5
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 227
    :cond_8
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_9
    move-object/from16 v16, v3

    const/4 v0, 0x0

    .line 154
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object/from16 v16, v3

    const/4 v0, 0x0

    .line 153
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object/from16 v16, v3

    const/4 v0, 0x0

    .line 151
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Need a window for the onboarding dialog to show"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final settings()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->context:Landroid/content/Context;

    const-string v1, "HasUserSeenPriorityOnboarding"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->onConversationSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;->onClick()V

    :goto_0
    return-void

    :cond_1
    const-string p0, "dialog"

    .line 88
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final getBadge()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->badge:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->view:Landroid/view/View;

    return-object p0
.end method

.method public final init()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->initDialog()V

    return-void
.end method

.method public final show()V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->dialog:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    const-string p0, "dialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
