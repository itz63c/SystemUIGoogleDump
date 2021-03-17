.class public Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/UrlIndicatorContainerView;
.super Landroid/widget/LinearLayout;
.source "UrlIndicatorContainerView.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final urlContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/UrlIndicatorContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/UrlIndicatorContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/UrlIndicatorContainerView;->context:Landroid/content/Context;

    .line 43
    sget p2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/R$layout;->url_container:I

    .line 44
    invoke-static {p1, p2, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/UrlIndicatorContainerView;->urlContainer:Landroid/widget/LinearLayout;

    return-void
.end method
