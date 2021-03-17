.class public final synthetic Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/appwidget/AppWidgetManager;

.field public final synthetic f$2:Ljava/util/Map;

.field public final synthetic f$3:[I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/Map;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda0;->f$1:Landroid/appwidget/AppWidgetManager;

    iput-object p3, p0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda0;->f$2:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda0;->f$3:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda0;->f$1:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda0;->f$2:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda0;->f$3:[I

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->$r8$lambda$4Sq8Pl6R31vi_V1S_eIk-uFU6K0(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/Map;[I)V

    return-void
.end method
