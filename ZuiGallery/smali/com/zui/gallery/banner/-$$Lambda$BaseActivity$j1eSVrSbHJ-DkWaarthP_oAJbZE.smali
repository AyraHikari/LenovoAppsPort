.class public final synthetic Lcom/zui/gallery/banner/-$$Lambda$BaseActivity$j1eSVrSbHJ-DkWaarthP_oAJbZE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/zui/gallery/banner/-$$Lambda$BaseActivity$j1eSVrSbHJ-DkWaarthP_oAJbZE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/gallery/banner/-$$Lambda$BaseActivity$j1eSVrSbHJ-DkWaarthP_oAJbZE;

    invoke-direct {v0}, Lcom/zui/gallery/banner/-$$Lambda$BaseActivity$j1eSVrSbHJ-DkWaarthP_oAJbZE;-><init>()V

    sput-object v0, Lcom/zui/gallery/banner/-$$Lambda$BaseActivity$j1eSVrSbHJ-DkWaarthP_oAJbZE;->INSTANCE:Lcom/zui/gallery/banner/-$$Lambda$BaseActivity$j1eSVrSbHJ-DkWaarthP_oAJbZE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/app/Activity;

    check-cast p2, Lcom/zui/gallery/banner/MonitorHomeReceiver;

    invoke-static {p1, p2}, Lcom/zui/gallery/banner/BaseActivity;->lambda$onActivityResult$1(Landroid/app/Activity;Lcom/zui/gallery/banner/MonitorHomeReceiver;)V

    return-void
.end method
