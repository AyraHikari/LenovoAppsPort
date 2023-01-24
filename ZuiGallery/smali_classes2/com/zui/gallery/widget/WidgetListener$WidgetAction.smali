.class public interface abstract Lcom/zui/gallery/widget/WidgetListener$WidgetAction;
.super Ljava/lang/Object;
.source "WidgetListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/widget/WidgetListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WidgetAction"
.end annotation


# static fields
.field public static final ACTION_CLICK:Ljava/lang/String; = "com.zui.action.click"

.field public static final ACTION_CLICK_LOCK:Ljava/lang/String; = "com.zui.action.click.lock"

.field public static final ADDED_WIDGET:Ljava/lang/String; = "addedWidget"

.field public static final ALBUM_IMAGE_BITMAP:Ljava/lang/String; = "albumImage_bitmap"

.field public static final ALBUM_IMAGE_BLURRY:Ljava/lang/String; = "albumImage_blurry"

.field public static final ALBUM_IMAGE_FILE:Ljava/lang/String; = "albumImage_file"

.field public static final ALBUM_IMAGE_URI:Ljava/lang/String; = "albumImage_uri"

.field public static final AMBIGUITY:I = 0x64

.field public static final FILE_AUTOMATIC_CHANGED:Ljava/lang/String; = "fileAutomaticChanged"

.field public static final FILE_CHANGED:Ljava/lang/String; = "file_changed"

.field public static final FILE_CHANGED_NOTIFICATION:Ljava/lang/String; = "file_changed_notification"

.field public static final IS_LOCK:Ljava/lang/String; = "IsLock"

.field public static final LOCK:Ljava/lang/String; = "widgetLock"

.field public static final MULTIPLE_PATH_LIST:Ljava/lang/String; = "multiple_path_list"

.field public static final MULTIPLE_URI_LIST:Ljava/lang/String; = "multiple_uri_list"

.field public static final NEW_FILE_DIR:Ljava/lang/String;

.field public static final NEW_FILE_PATH:Ljava/lang/String;

.field public static final NEW_FILE_PATHS:[Ljava/lang/String;

.field public static final NEW_FILE_PATH_LAND:Ljava/lang/String;

.field public static final NEXT_TIME:Ljava/lang/String; = "nextTime"

.field public static final OLD_FILE_PATH:Ljava/lang/String; = "/system/etc/gallery_widget_default.png"

.field public static final OLD_FILE_PATHS:[Ljava/lang/String;

.field public static final OLD_FILE_PATH_LAND:Ljava/lang/String; = "/system/etc/gallery_widget_default_land.png"

.field public static final OLD_FILE_TITLE:Ljava/lang/String;

.field public static final PAD_LAND:Ljava/lang/String; = "pad_land"

.field public static final PAD_PORT:Ljava/lang/String; = "pad_port"

.field public static final SCREEN_LAND:Ljava/lang/String; = "screen_land"

.field public static final SCREEN_PORT:Ljava/lang/String; = "screen_port"

.field public static final UN_LOCK:Ljava/lang/String; = "UnLock"

.field public static final WIDGET_ID_lIST:Ljava/lang/String; = "widgetIdList"

.field public static final ZUI_CALENDAR:Ljava/lang/String; = "com.zui.calendar"

.field public static final ZUI_CALENDAR_ACTIVE_ICON:Ljava/lang/String; = "android.intent.category.ACTIVE_ICON"

.field public static final ZUI_CALENDAR_ACTIVITY:Ljava/lang/String; = "com.zui.calendar.LaunchActivity"

.field public static final ZUI_CALENDAR_ENTER_FROM:Ljava/lang/String; = "EnterFromWidget"

.field public static final ZUI_DESK_CLOCK:Ljava/lang/String; = "com.zui.deskclock"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/widget/WidgetListener$WidgetAction;->OLD_FILE_TITLE:Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "widget"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/widget/WidgetListener$WidgetAction;->NEW_FILE_DIR:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/widget/WidgetListener$WidgetAction;->NEW_FILE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gallery_widget_default.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/widget/WidgetListener$WidgetAction;->NEW_FILE_PATH:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/widget/WidgetListener$WidgetAction;->NEW_FILE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gallery_widget_default_land.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/widget/WidgetListener$WidgetAction;->NEW_FILE_PATH_LAND:Ljava/lang/String;

    const-string v1, "/system/etc/gallery_widget_default.png"

    const-string v3, "/system/etc/gallery_widget_default_land.png"

    .line 73
    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zui/gallery/widget/WidgetListener$WidgetAction;->OLD_FILE_PATHS:[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 74
    sget-object v3, Lcom/zui/gallery/widget/WidgetListener$WidgetAction;->NEW_FILE_PATH:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/zui/gallery/widget/WidgetListener$WidgetAction;->NEW_FILE_PATHS:[Ljava/lang/String;

    return-void
.end method
