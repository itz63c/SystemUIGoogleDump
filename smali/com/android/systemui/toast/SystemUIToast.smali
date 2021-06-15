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

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultX:I

    .line 58
    iput v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultHorizontalMargin:I

    .line 59
    iput v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultVerticalMargin:I

    .line 77
    iput-boolean p7, p0, Lcom/android/systemui/toast/SystemUIToast;->mToastStyleEnabled:Z

    .line 78
    iput-object p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 79
    iput-object p2, p0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    .line 80
    iput-object p3, p0, Lcom/android/systemui/toast/SystemUIToast;->mText:Ljava/lang/CharSequence;

    .line 81
    iput-object p4, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    .line 82
    iput-object p5, p0, Lcom/android/systemui/toast/SystemUIToast;->mPackageName:Ljava/lang/String;

    .line 83
    iput p6, p0, Lcom/android/systemui/toast/SystemUIToast;->mUserId:I

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->inflateToastView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mToastView:Landroid/view/View;

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->createInAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mInAnimator:Landroid/animation/Animator;

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->createOutAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mOutAnimator:Landroid/animation/Animator;

    .line 88
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

    .line 70
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/toast/SystemUIToast;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/ToastPlugin$Toast;Ljava/lang/String;IZI)V

    return-void
.end method

.method private createInAnimator()Landroid/animation/Animator;
    .locals 1

    .line 204
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getInAnimation()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getInAnimation()Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    .line 208
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mToastStyleEnabled:Z

    if-eqz v0, :cond_1

    .line 209
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

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getOutAnimation()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getOutAnimation()Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    .line 217
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mToastStyleEnabled:Z

    if-eqz v0, :cond_1

    .line 218
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

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    .line 230
    invoke-virtual {v0, p2}, Lcom/android/settingslib/applications/ApplicationsState;->isUserAdded(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 231
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "user hasn\'t been fully initialized, not showing an app icon for packageName="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUIToast"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 235
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 236
    iget-object p2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_2

    sget-object p2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 237
    invoke-interface {p2, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 241
    :cond_1
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 242
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 243
    invoke-static {p0}, Lcom/android/launcher3/icons/IconFactory;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/IconFactory;

    move-result-object v0

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x1

    .line 244
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Z)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 246
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2

    :cond_2
    :goto_0
    return-object v2
.end method

.method private inflateToastView()Landroid/view/View;
    .locals 3

    .line 166
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 171
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mToastStyleEnabled:Z

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->text_toast:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 174
    sget v1, Lcom/android/systemui/R$id;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/toast/SystemUIToast;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v1, p0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/toast/SystemUIToast;->mPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mUserId:I

    invoke-static {v1, v2, p0}, Lcom/android/systemui/toast/SystemUIToast;->getBadgedIcon(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_1

    .line 178
    sget p0, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 180
    :cond_1
    sget v1, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 181
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, p0}, Landroid/widget/ToastPresenter;->getTextToastView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private isPluginToast()Z
    .locals 0

    .line 162
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

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getGravity()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getGravity()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 97
    :cond_0
    iget p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultGravity:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getHorizontalMargin()Ljava/lang/Integer;
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getHorizontalMargin()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getHorizontalMargin()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 124
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getInAnimation()Landroid/animation/Animator;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mInAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public getOutAnimation()Landroid/animation/Animator;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mOutAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public getVerticalMargin()Ljava/lang/Integer;
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getVerticalMargin()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getVerticalMargin()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 133
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mToastView:Landroid/view/View;

    return-object p0
.end method

.method public getXOffset()Ljava/lang/Integer;
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getXOffset()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getXOffset()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 106
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getYOffset()Ljava/lang/Integer;
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getYOffset()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getYOffset()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 115
    :cond_0
    iget p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultY:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public hasCustomAnimation()Z
    .locals 1

    .line 158
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

    .line 194
    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->onOrientationChange(I)V

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10502ab

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultY:I

    .line 199
    iget-object p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e00cd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultGravity:I

    return-void
.end method
