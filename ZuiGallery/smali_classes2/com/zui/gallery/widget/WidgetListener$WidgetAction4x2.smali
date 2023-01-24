.class public interface abstract Lcom/zui/gallery/widget/WidgetListener$WidgetAction4x2;
.super Ljava/lang/Object;
.source "WidgetListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/widget/WidgetListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WidgetAction4x2"
.end annotation


# static fields
.field public static final ACTION_CLICK4x2:Ljava/lang/String; = "com.zui.action.click4x2"

.field public static final ACTION_CLICK_LOCK4x2:Ljava/lang/String; = "com.zui.action.click.lock4x2"

.field public static final ALBUM_IMAGE_BITMAP4x2:Ljava/lang/String; = "albumImageBitmap4x2"

.field public static final ALBUM_IMAGE_FILE4x2:Ljava/lang/String; = "albumImageFile4x2"

.field public static final ALBUM_IMAGE_URI4x2:Ljava/lang/String; = "albumImageUri4x2"

.field public static final ALBUM_ORIGINAL_IMAGE4X2:Ljava/lang/String; = "albumOriginalImage4x2"

.field public static final FILE_AUTOMATIC_CHANGED4x2:Ljava/lang/String; = "fileAutomaticChanged4x2"

.field public static final FILE_CHANGED4x2:Ljava/lang/String; = "fileChanged4x2"

.field public static final FILE_CHANGED_NOTIFICATION4x2:Ljava/lang/String; = "fileChangedNotification4x2"

.field public static final IS_LOCK4x2:Ljava/lang/String; = "isLock4x2"

.field public static final LOCK4x2:Ljava/lang/String; = "widgetLock4x2"

.field public static final LUNAR_NEW_YEARS:[Ljava/lang/String;

.field public static final MID_AUTUMN:Ljava/lang/String; = "\u516b\u6708\u5341\u4e94"

.field public static final MULTIPLE_PATH_LIST4x2:Ljava/lang/String; = "multiplePathList4x2"

.field public static final MULTIPLE_URI_LIST4x2:Ljava/lang/String; = "multipleUriList4x2"

.field public static final NEXT_TIME4x2:Ljava/lang/String; = "nextTime4x2"

.field public static final SCREEN_LAND4x2:Ljava/lang/String; = "screenLand4x2"

.field public static final SCREEN_PORT4x2:Ljava/lang/String; = "screenPort4x2"

.field public static final SPRING_FESTIVAL:[Ljava/lang/String;

.field public static final UN_LOCK4x2:Ljava/lang/String; = "unLock4x2"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "\u6b63\u6708\u521d\u4e00"

    const-string v1, "\u6b63\u6708\u521d\u4e8c"

    const-string v2, "\u6b63\u6708\u521d\u4e09"

    const-string v3, "\u6b63\u6708\u521d\u56db"

    const-string v4, "\u6b63\u6708\u521d\u4e94"

    const-string v5, "\u6b63\u6708\u521d\u516d"

    .line 89
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/widget/WidgetListener$WidgetAction4x2;->SPRING_FESTIVAL:[Ljava/lang/String;

    const-string v0, "\u814a\u6708\u4e8c\u5341\u4e5d"

    const-string v1, "\u814a\u6708\u5345\u5341"

    .line 90
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/widget/WidgetListener$WidgetAction4x2;->LUNAR_NEW_YEARS:[Ljava/lang/String;

    return-void
.end method
