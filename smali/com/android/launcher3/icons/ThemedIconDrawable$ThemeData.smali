.class public Lcom/android/launcher3/icons/ThemedIconDrawable$ThemeData;
.super Ljava/lang/Object;
.source "ThemedIconDrawable.java"


# instance fields
.field final mIconID:I

.field final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemeData;->mResources:Landroid/content/res/Resources;

    .line 207
    iput p2, p0, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemeData;->mIconID:I

    return-void
.end method


# virtual methods
.method public wrapDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 218
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedAdaptiveIcon;

    check-cast p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedAdaptiveIcon;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable;Lcom/android/launcher3/icons/ThemedIconDrawable$ThemeData;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method
