.class Lcom/android/systemui/people/PeopleStoryIconFactory;
.super Ljava/lang/Object;
.source "PeopleStoryIconFactory.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;
    }
.end annotation


# instance fields
.field private mAccentColor:I

.field private mContext:Landroid/content/Context;

.field private mDensity:F

.field private final mIconBitmapSize:I

.field final mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private mIconSize:F

.field private mImportantConversationColor:I

.field final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/util/IconDrawableFactory;I)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-float p4, p4

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p4

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mIconBitmapSize:I

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mDensity:F

    mul-float/2addr v0, p4

    .line 56
    iput v0, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mIconSize:F

    .line 57
    iput-object p2, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 58
    iput-object p3, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 59
    sget p2, Lcom/android/systemui/R$color;->important_conversation:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mImportantConversationColor:I

    .line 60
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const p4, 0x1010435

    const/4 v0, 0x1

    invoke-virtual {p3, p4, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 62
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mAccentColor:I

    .line 63
    iput-object p1, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getAppBadge(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 76
    iget-object p2, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/android/settingslib/Utils;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    iget-object p0, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getPeopleTileDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZZ)Landroid/graphics/drawable/Drawable;
    .locals 11

    move-object v0, p0

    .line 89
    new-instance v10, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;

    move-object v1, p2

    move v2, p3

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/people/PeopleStoryIconFactory;->getAppBadge(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, v0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mIconBitmapSize:I

    iget v4, v0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mImportantConversationColor:I

    iget v6, v0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mIconSize:F

    iget v7, v0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mDensity:F

    iget v8, v0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mAccentColor:I

    move-object v0, v10

    move-object v1, p1

    move v5, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZFFIZ)V

    return-object v10
.end method
