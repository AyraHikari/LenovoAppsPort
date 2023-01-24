.class public final synthetic Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$jasiMaLeOjkn0q7-jN0MQoaqIrw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$jasiMaLeOjkn0q7-jN0MQoaqIrw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$jasiMaLeOjkn0q7-jN0MQoaqIrw;

    invoke-direct {v0}, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$jasiMaLeOjkn0q7-jN0MQoaqIrw;-><init>()V

    sput-object v0, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$jasiMaLeOjkn0q7-jN0MQoaqIrw;->INSTANCE:Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$jasiMaLeOjkn0q7-jN0MQoaqIrw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lrx_activity_result2/Result;

    invoke-static {p1}, Lcom/zui/lenovoone/LenovoOneHelper;->lambda$jasiMaLeOjkn0q7-jN0MQoaqIrw(Lrx_activity_result2/Result;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
