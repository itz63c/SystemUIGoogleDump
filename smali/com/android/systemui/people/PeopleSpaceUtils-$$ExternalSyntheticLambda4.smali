.class public final synthetic Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda4;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda4;->f$0:Ljava/util/Map;

    check-cast p1, Landroid/app/people/PeopleSpaceTile;

    invoke-static {p0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->$r8$lambda$aRolgkL-cCjbHHBhHbWQEEPJ1xs(Ljava/util/Map;Landroid/app/people/PeopleSpaceTile;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0
.end method
