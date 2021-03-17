.class public Lcom/android/systemui/toast/SystemUIToast;
.super Ljava/lang/Object;
.source "SystemUIToast.java"

# interfaces
.implements Lcom/android/systemui/plugins/ToastPlugin$Toast;


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDefaultGravity:I

.field final mDefaultHorizontalMargin:I

.field final mDefaultVerticalMargin:I

.field final mDefaultX:I

.field private mDefaultY:I

.field private final mInAnimator:Landroid/animation/Animator;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mOutAnimator:Landroid/animation/Animator;

.field private final mPackageName:Ljava/lang/String;

.field final mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

.field final mText:Ljava/lang/CharSequence;

.field private final mToastStyleEnabled:Z

.field private final mToastView:Landroid/view/View;

.field private final mUserId:I


# direct methods
.method constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/ToastPlugin$Toast;Ljava/lang/String;IZI)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultX:I

    .line 55
    iput v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultHorizontalMargin:I

    .line 56
    iput v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultVerticalMargin:I

    .line 74
    iput-boolean p7, p0, Lcom/android/systemui/toast/SystemUIToast;->mToastStyleEnabled:Z

    .line 75
    iput-object p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 76
    iput-object p2, p0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    .line 77
    iput-object p3, p0, Lcom/android/systemui/toast/SystemUIToast;->mText:Ljava/lang/CharSequence;

    .line 78
    iput-object p4, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    .line 79
    iput-object p5, p0, Lcom/android/systemui/toast/SystemUIToast;->mPackageName:Ljava/lang/String;

    .line 80
    iput p6, p0, Lcom/android/systemui/toast/SystemUIToast;->mUserId:I

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->inflateToastView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mToastView:Landroid/view/View;

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->createInAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mInAnimator:Landroid/animation/Animator;

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->createOutAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mOutAnimator:Landroid/animation/Animator;

    .line 85
    invoke-virtual {p0, p8}, Lcom/android/systemui/toast/SystemUIToast;->onOrientationChange(I)V

    return-void
.end method

.method constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;IZI)V
    .locals 9

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    .line 67
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/toast/SystemUIToast;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/ToastPlugin$Toast;Ljava/lang/String;IZI)V

    return-void
.end method

.method private createInAnimator()Landroid/animation/Animator;
    .locals 1

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getInAnimation()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getInAnimation()Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    .line 203
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mToastStyleEnabled:Z

    if-eqz v0, :cond_1

    .line 204
    sget-object v0, Lcom/android/systemui/toast/ToastDefaultAnimation;->Companion:Lcom/android/systemui/toast/ToastDefaultAnimation$Companion;

    invoke-virtual {p0}, Lcom/android/systemui/toast/SystemUIToast;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/toast/ToastDefaultAnimation$Companion;->toastIn(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private createOutAnimator()Landroid/animation/Animator;
    .locals 1

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getOutAnimation()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getOutAnimation()Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    .line 212
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mToastStyleEnabled:Z

    if-eqz v0, :cond_1

    .line 213
    sget-object v0, Lcom/android/systemui/toast/ToastDefaultAnimation;->Companion:Lcom/android/systemui/toast/ToastDefaultAnimation$Companion;

    invoke-virtual {p0}, Lcom/android/systemui/toast/SystemUIToast;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/toast/ToastDefaultAnimation$Companion;->toastOut(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getBadgedIcon(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    .line 225
    :try_start_0
    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 227
    iget v1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 228
    invoke-static {p0}, Lcom/android/launcher3/icons/IconFactory;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/IconFactory;

    move-result-object v2

    .line 230
    invoke-virtual {p2, v0}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x0

    .line 229
    invoke-virtual {v2, p2, v1, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Z)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p2

    iget-object p2, p2, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 231
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 233
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "could not load icon for package="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " e="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUIToast"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private inflateToastView()Landroid/view/View;
    .locals 4

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 168
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mToastStyleEnabled:Z

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->text_toast:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 171
    sget v1, Lcom/android/systemui/R$id;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/toast/SystemUIToast;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    sget v1, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/toast/SystemUIToast;->mPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mUserId:I

    .line 174
    invoke-static {v2, v3, p0}, Lcom/android/systemui/toast/SystemUIToast;->getBadgedIcon(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, p0}, Landroid/widget/ToastPresenter;->getTextToastView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private isPluginToast()Z
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getGravity()Ljava/lang/Integer;
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getGravity()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getGravity()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 94
    :cond_0
    iget p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultGravity:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getHorizontalMargin()Ljava/lang/Integer;
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getHorizontalMargin()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getHorizontalMargin()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 121
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getInAnimation()Landroid/animation/Animator;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mInAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public getOutAnimation()Landroid/animation/Animator;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mOutAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public getVerticalMargin()Ljava/lang/Integer;
    .locals 1

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getVerticalMargin()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getVerticalMargin()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 130
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mToastView:Landroid/view/View;

    return-object p0
.end method

.method public getXOffset()Ljava/lang/Integer;
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getXOffset()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getXOffset()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 103
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getYOffset()Ljava/lang/Integer;
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getYOffset()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getYOffset()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 112
    :cond_0
    iget p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultY:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public hasCustomAnimation()Z
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/toast/SystemUIToast;->getInAnimation()Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/toast/SystemUIToast;->getOutAnimation()Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onOrientationChange(I)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->onOrientationChange(I)V

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 191
    iget-boolean v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mToastStyleEnabled:Z

    if-eqz v0, :cond_1

    .line 192
    sget v0, Lcom/android/systemui/R$dimen;->toast_y_offset:I

    goto :goto_0

    :cond_1
    const v0, 0x10502a8

    .line 190
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultY:I

    .line 194
    iget-object p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e00c5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultGravity:I

    return-void
.end method
